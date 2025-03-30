# 🌩️ Projeto: Infraestrutura Básica no GCP com Terraform

Este projeto cria uma infraestrutura simples porém completa na Google Cloud Platform usando Terraform, como parte do meu portfólio de Cloud Engineer com foco em arquitetura de soluções.

> ⚠️ **Aviso**: Este projeto foi desenvolvido com o auxílio do ChatGPT para acelerar o aprendizado, automatizar explicações e revisar conceitos técnicos. Todo o código e estrutura foram compreendidos e adaptados para fins educacionais e profissionais.

---

## 🎯 Objetivo

Criar, via infraestrutura como código:

- Uma rede VPC customizada
- Uma sub-rede privada
- Uma máquina virtual Linux (f1-micro) com NGINX instalado automaticamente
- Regras de firewall permitindo acesso HTTP (porta 80) e SSH (porta 22)

---

## 🧰 Tecnologias e Ferramentas Utilizadas

- [Google Cloud Platform (GCP)](https://cloud.google.com/)
- [Terraform](https://www.terraform.io/)
- Cloud Shell (sem necessidade de instalação local)
- Debian 11 (imagem da VM)
- NGINX (servidor web)

---

## 🗂️ Estrutura dos Arquivos

```
.
├── main.tf         # Define os recursos GCP
├── variables.tf    # Variáveis reutilizáveis (project_id, região, zona)
├── outputs.tf      # Mostra o IP público da VM após deploy
└── README.md       # Este documento
```

---

## ▶️ Como Executar

> 💡 Recomendado usar o **Google Cloud Shell** para evitar instalações locais.

### 1. Clonar ou criar o diretório:

```bash
mkdir gcp-terraform-vpc-vm && cd gcp-terraform-vpc-vm
```

### 2. Criar os arquivos `.tf` (veja estrutura acima)

### 3. Inicializar o Terraform

```bash
terraform init
```

### 4. Executar a infraestrutura (substitua pelo seu project_id)

```bash
terraform apply -var="project_id=skilled-flight-348103"
```

Digite `yes` para confirmar.

---

## 🌐 Acessar a aplicação

Após o deploy, o terminal mostrará o **IP público da VM**. Acesse pelo navegador:

```
http://SEU-IP-PUBLICO
```

Você verá a tela padrão do NGINX 🎉

---

## 🧹 Como destruir tudo depois

```bash
terraform destroy -var="project_id=skilled-flight-348103"
```

---

## 🔍 Visualizar recursos no GCP

- [Compute Engine – Instâncias de VM](https://console.cloud.google.com/compute/instances)
- [VPC – Redes](https://console.cloud.google.com/networking/networks/list)
- [Sub-redes](https://console.cloud.google.com/networking/subnetworks)
- [Regras de firewall](https://console.cloud.google.com/networking/firewalls/list)

---

## 📚 Aprendizados

- Como declarar e usar variáveis no Terraform
- Diferença entre VPC automática e customizada
- Como aplicar tags e regras de firewall em instâncias
- Como usar `metadata_startup_script` para automação
- Gerenciamento de recursos pelo GCP Console e `gcloud CLI`

---

## 👨‍💻 Autor

**Filipe Silva Lyrio** 
🧠 Data Scientist | 🤖 AI Developer | 📊 Machine Learning Engineer | 📚 LLM Engineer

[LinkedIn](https://www.linkedin.com/in/filipelyrio)
