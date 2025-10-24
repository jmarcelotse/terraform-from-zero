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
# # Bloco de declaração de uma variável do tipo tuple. Note a Sintaxe tupple([elementtype, elementtype])
# variable "resource_group" {
#   type = tuple([
#     string,   # nome do grupo de recursos
#     string    # localização do grupo de recursos
#   ])
#   default = [
#     "nome-do-grupo-de-recursos",
#     "westus2"
#   ]
# }

# # Criando um resource group utilizando os indíces de dos elementos dentro da variavel tuple.
# resource "azurerm_resource_group" "rg" {
#   name     = var.resource_group[0]
#   location = var.resource_group[1]
#   depends_on = [  ]
# }
variable "default_rg" {
  type = tuple([
    string,   # nome do grupo de recursos
    string    # localização do grupo de recursos
  ])
  default = [
    "default-rg",
    "eastus"
  ]
}
resource "azurerm_resource_group" "example" {
  name     = var.default_rg[0]
  location = var.default_rg[1]
}

resource "azurerm_storage_account" "example" {
  name                = "storageaccountname"
  resource_group_name = var.default_rg[0]

  location                 =  var.default_rg[1]
  account_tier             = "Standard"
  account_replication_type = "LRS"

depends_on = [ azurerm_resource_group.example ]
}