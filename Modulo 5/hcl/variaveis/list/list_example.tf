# Bloco de declaração do terraform, passando os providers requisitados informando a versão específica.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.48.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}
# Bloco de declaração do provider azurerm, para se comunicar com a cloud do Azure
provider "azurerm" {
  features {}
}
# Bloco de declaração do provider random, para criar ids randomicos. Bom para usar em nomes de recursos.
provider "random" {
}

# Bloco de declaração de uma variável list. Note a sintaxe  do type, seguido do nome list e entre parentêses o tipo de lista (string).
variable "locations" {
    type = list(string)
    description = "(optional) describe your variable"
    default = ["EastUS","WestUS","CentralUS"]
}

# Bloco de criação de um id randomico. Usamos isso para criar recursos com nomes distintos.
resource "random_id" "example" {
  byte_length = 2
}

# Bloco de declaração de um Resource Group. Aqui usamos uma função chamada Count com uma expressão length para contar e interagir
# sobre os itens existentes na lista da variável locations. Depois usamos essa mesma contágem, para criar um recurso para cada indíce dentro da lista.
resource "azurerm_resource_group" "example" {
  count = length(var.locations)
  name = "rodnet-rg-${random_id.example.dec}-${var.locations[count.index]}"
  location = "${var.locations[count.index]}"
}