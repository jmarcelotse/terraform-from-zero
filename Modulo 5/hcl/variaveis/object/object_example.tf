# Bloco de declaração do terraform, passando os providers requisitados informando a versão específica.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.48.0"
    }
  }
}
# Bloco de declaração do provider azurerm, para se comunicar com a cloud do Azure
provider "azurerm" {
  features {}
  # Configuration options
}
# Bloco de definição de uma variável object. Note a sintaxe: object({<atribute_name = types>})
variable "prod_vnet" {
  type = object({
    name                  = string
    address_space         = list(string)
    dns                   = list(string)
    subnets_address_space = map(string)
    tags                  = map(string)
  })
  default = {
    name                  = "Prod"
    address_space         = ["10.0.0.0/22"]
    dns                   = ["10.0.0.14", "10.0.0.15"]
    subnets_address_space = {
      internal = "10.0.1.0/24"
      public   = "10.0.2.0/24"
      dmz      = "10.0.3.0/24"
    }
    tags = {
      environment = "production"
    }
  }
}

variable "dev_vnet" {
  type = object({
    name                  = string
    address_space         = list(string)
    dns                   = list(string)
    subnets_address_space = map(string)
    tags                  = map(string)
  })
  default = {
    name                  = "Dev"
    address_space         = ["192.168.0.0/22"]
    dns                   = ["192.168.0.14"]
    subnets_address_space = {
      internal = "192.168.1.0/24"
      public   = "192.168.2.0/24"
    }
    tags = {
      environment = "development"
    }
  }
}
# Bloco de declaração de um Resource Group
resource "azurerm_resource_group" "example" {
  name     = "meu-grupo-de-vnets"
  location = "EastUS"
}

# Bloco de declaração de uma virtual network, utilizando os valores da variável object de prod e em seguida dev, para gerar duas vnets distintas.
resource "azurerm_virtual_network" "prod_vnet" {
  name                = var.prod_vnet.name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.prod_vnet.address_space
  dns_servers         = var.prod_vnet.dns

  dynamic "subnet" {
    for_each = var.prod_vnet.subnets_address_space
    content {
      name           = subnet.key
      address_prefix = subnet.value
    }
  }

  tags = var.prod_vnet.tags
}

resource "azurerm_virtual_network" "dev_vnet" {
  name                = var.dev_vnet.name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.dev_vnet.address_space
  dns_servers         = var.dev_vnet.dns

  dynamic "subnet" {
    for_each = var.dev_vnet.subnets_address_space
    content {
      name           = subnet.key
      address_prefix = subnet.value
    }
  }

  tags = var.dev_vnet.tags
}
