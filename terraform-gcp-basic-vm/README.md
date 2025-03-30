# 🌩️ Projeto: Infraestrutura Básica no GCP com Terraform

Este projeto faz parte do meu portfólio como Cloud Engineer e tem como objetivo demonstrar a criação de infraestrutura básica na Google Cloud Platform usando Terraform.

> ⚠️ Projeto planejado para estudo e demonstração de boas práticas em Infraestrutura como Código (IaC).

---

## 🎯 Objetivo

Provisionar os seguintes recursos com Terraform:

- VPC customizada
- Sub-rede na região `us-east1`
- VM Linux (f1-micro, gratuita) com NGINX instalado automaticamente
- Regras de firewall para acesso via HTTP (80) e SSH (22)

---

## 🧰 Tecnologias Utilizadas

- **Google Cloud Platform (GCP)**
- **Terraform**
- **Cloud Shell** (ambiente recomendado)

---

## 📂 Estrutura do Projeto

```
terraform-gcp-basic-vm/
├── main.tf         # Recursos principais: VPC, subnet, VM, firewall
├── variables.tf    # Variáveis reutilizáveis (project_id, região, zona)
├── outputs.tf      # IP externo da VM
└── README.md       # Instruções e explicações do projeto
```

---

## 📖 Aprendizados

- Prática com provisionamento via código
- Diferença entre VPC automática e customizada
- Uso de scripts de inicialização em VMs
- Controle de acesso com firewall rules

---

## 📄 Status

> ✅ Estrutura criada e documentada. Pronta para execução em ambiente de testes.

---

## 👨‍💼 Autor

**Filipe Lyrio**  
🧠 Data Scientist | 🤖 AI Developer | 📊 Machine Learning Engineer | 📚 LLM Engineer
