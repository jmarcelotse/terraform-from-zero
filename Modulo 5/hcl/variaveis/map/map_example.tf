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
    features{}
  # Configuration options
}

# Bloco de declaração de uma variável do tipo map. Note a sintaxe do type, onde passamos o tipo
# map, seguido do tipo de mapeamentos esperados entre parênteses (string). Neste caso, temos
# um map de textos(string).

variable "network_address_space" {
  type = map(string)
  default = {
    "PROD" = "10.0.0.0/22"
    "DEV" = "192.168.0.0/22"
  }
}

# Bloco de declaração de um resource group
resource "azurerm_resource_group" "example" {
  name = "meus-grupos-de-rede"
  location = "EastUS"
}
#  Bloco de declaração de uma virtual network, utilizando os valores da variavel map para criar uma nova vnet.
resource "azurerm_virtual_network" "PROD" {
  name                = "prod-network"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["${var.network_address_space["PROD"]}"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.0.0/24"
  }
  tags = {
    environment = "Production"
  }
}

resource "azurerm_virtual_network" "DEV" {
  name                = "dev-network"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["${var.network_address_space["DEV"]}"]

  subnet {
    name           = "subnet1"
    address_prefix = "192.168.0.0/24"
  }
  tags = {
    environment = "Desenvolvimento"
  }
}