output "vm_ip" {
  description = "Endereço IP externo da VM"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}

