variable "project_name" {
  type        = string
  description = "Nome do repositorio que esta rodando a esteira"

  validation {
    condition     = trimspace(var.project_name) != ""
    error_message = "project_name nao pode ser vazio. Use o nome do repositorio que esta rodando a esteira."
  }
}

variable "region" {
  type        = string
  description = "Regiao AWS"
  default     = "us-east-1"
}

variable "cloudfront_comment" {
  type        = string
  description = "Comentario do CloudFront. Se vazio, usa o nome do repositorio."
  default     = ""
}

variable "deployment_env" {
  type        = string
  description = "Ambiente alvo do deploy do frontend: dev, hml ou prod."
  default     = "dev"

  validation {
    condition     = contains(["dev", "hml", "prod"], trimspace(var.deployment_env))
    error_message = "deployment_env deve ser dev, hml ou prod."
  }
}
