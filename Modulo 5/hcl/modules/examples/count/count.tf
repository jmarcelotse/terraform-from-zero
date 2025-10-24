terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.58.0"
    }
  }
}

# Configuração do provider de exemplo. Substitua os valores em <> pelos seus valores
provider "azurerm" {
  features {}
    subscription_id = "<SUBSCRIPTION_ID>"
    tenant_id = "<TENANT_ID>"
  # Configuration options
}

# Definição das variáveis locais
locals {
  location = "EASTUS"
}

# Criação de Resource Group utilizando count
resource "azurerm_resource_group" "example" {
  count = 2
  name     = "my-rg-in-${count.index}"
  location = local.location
}

# Criação de Public Ips utilizando o count dentro de cada resource group criado
resource "azurerm_public_ip" "pip" {
  count = 2
  name                = "my-pip-${count.index}"
  resource_group_name = azurerm_resource_group.example[count.index].name
  location            = azurerm_resource_group.example[count.index].location
  allocation_method   = "Static"
}