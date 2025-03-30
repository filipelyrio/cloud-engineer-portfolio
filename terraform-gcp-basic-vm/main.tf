provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_network" "custom_vpc" {
  name                    = "vpc-customizada"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet-us-east1"
  ip_cidr_range = "10.0.0.0/24"
  region        = var.region
  network       = google_compute_network.custom_vpc.id
}

resource "google_compute_instance" "vm_instance" {
  name         = "vm-exemplo"
  machine_type = "f1-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.custom_vpc.name
    subnetwork = google_compute_subnetwork.subnet1.name
    access_config {}
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
    apt-get update
    apt-get install -y nginx
  EOT

  tags = ["web"]
}

resource "google_compute_firewall" "allow-http-ssh" {
  name    = "allow-http-ssh"
  network = google_compute_network.custom_vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web"]
}
