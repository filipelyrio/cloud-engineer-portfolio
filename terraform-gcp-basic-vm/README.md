# 🌩️ Project: Basic Infrastructure on GCP with Terraform

This project sets up a simple yet complete infrastructure on Google Cloud Platform using Terraform. It is part of my Cloud Engineer portfolio, with a focus on cloud architecture automation and best practices.

---

## 🎯 Objective

Provision the following resources using Infrastructure as Code:

- A custom VPC network
- A private subnetwork
- A Linux virtual machine (f1-micro) with NGINX installed automatically
- Firewall rules allowing HTTP (port 80) and SSH (port 22)

---

## 🧰 Tools and Technologies Used

- [Google Cloud Platform (GCP)](https://cloud.google.com/)
- [Terraform](https://www.terraform.io/)
- Cloud Shell (no local installation required)
- Debian 11 (VM image)
- NGINX (web server)

---

## 📂 File Structure

```
.
├── main.tf         # Defines GCP resources
├── variables.tf    # Reusable variables (project_id, region, zone)
├── outputs.tf      # Displays the public IP after deployment
└── README.md       # This documentation
```

---

## ▶️ How to Deploy

> 💡 Recommended: Use **Google Cloud Shell** to avoid local setup.

### 1. Create and enter a working directory:

```bash
mkdir gcp-terraform-vpc-vm && cd gcp-terraform-vpc-vm
```

### 2. Create the `.tf` files (see structure above)

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Apply the infrastructure (replace with your project_id)

```bash
terraform apply -var="project_id=skilled-flight-348103"
```

Type `yes` to confirm.

---

## 🌐 Access the Application

After deployment, the terminal will display the **public IP of the VM**. Open it in your browser:

```
http://YOUR-PUBLIC-IP
```

You should see the default NGINX welcome page 🎉

---

## 🦜 How to Destroy Everything

```bash
terraform destroy -var="project_id=skilled-flight-348103"
```

---

## 🔍 View Resources in the GCP Console

- [Compute Engine – VM Instances](https://console.cloud.google.com/compute/instances)
- [VPC – Networks](https://console.cloud.google.com/networking/networks/list)
- [Subnets](https://console.cloud.google.com/networking/subnetworks)
- [Firewall Rules](https://console.cloud.google.com/networking/firewalls/list)

---

## 📖 Key Learnings

- How to declare and use variables in Terraform
- Difference between automatic and custom VPCs
- Applying firewall rules and startup scripts
- Managing cloud resources via GCP Console and `gcloud` CLI

---

## 👨‍💼 Author

**Filipe Lyrio**  
🧠 Data Scientist | 🤖 AI Developer | 📊 ML Engineer | 📚 LLM Engineer  
[LinkedIn](https://www.linkedin.com/in/filipelyrio)
