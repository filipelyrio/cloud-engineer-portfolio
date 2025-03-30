variable "project_id" {
  description = "ID do projeto no GCP"
  type        = string
}

variable "region" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "us-east1"
}

variable "zone" {
  description = "Zona específica dentro da região"
  type        = string
  default     = "us-east1-b"
}
