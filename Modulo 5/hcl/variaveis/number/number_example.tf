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
# Declaração de variável tipo number
variable "num_files" {
  type = number
  default = 3
}
# Declaração de variável local, que pode ser acessada somente no contexto do arquivo corrente
locals {
    file_prefix = "foo"
}

# Criação de resource do tipo arquivo local.
resource "local_file" "foo" {
  count = var.num_files
  content  = "foo!"
  filename = "c:/temp/${local.file_prefix}-${count.index}.txt"
}