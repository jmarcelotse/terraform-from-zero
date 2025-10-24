# Bloco de declaração do terraform, passando os providers requisitados informando a versão específica.
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }
}
# Bloco de declaração do provider azurerm, para se comunicar com a cloud do Azure
provider "azurerm" {
    features {}
  # Configuration options
}
# Bloco de declaração de uma variável set. 
# Note a sintaxe  do type, seguido do nome set e entre parentêses o tipo de set (string).
variable "resource_groups" {
  type    = set(string)
  default = ["Prod", "Dev", "Stg"]
}

# Bloco de declaração de um resource do tipo resource_group usando o provider do azurerm
# Utilizando a função for_each conseguimos interagir sobre todos os itens dentro do nosso conjunto set
# Então é criado um Resource Group para cada item; utilizando a região EastUS.
# resource "azurerm_resource_group" "example" {
#   for_each = var.resource_groups
#   name = each.key
#   location = "EastUS"
# }

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_application_security_group" "example" {
  name                = "tf-appsecuritygroup"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  tags = {
    "${var.tags[Owner]}" = "Roger"
  }
}