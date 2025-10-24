# Bloco de declaração do terraform, passando os providers requisitados informando a versão específica.
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.3.0"
    }
  }
}

# Bloco de declaração do provider local, para trabalhar com arquivos locais
provider "local" {
  # Configuration options
}

# Declaração de variável tipo string
variable "ola_mundo_var" {
  type    = string
  default = "Hello, world!"
}
variable "ola_mundo_file_name" {
  type    = string
  default = "mundo"
}

# Criação de resource do tipo arquivo local.
resource "local_file" "foo" {
  content  = var.ola_mundo_var
  filename = "c:/temp/ola-${var.ola_mundo_file_name}.txt"
}