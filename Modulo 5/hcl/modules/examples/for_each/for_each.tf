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

# Declarando as variáveis locais
locals {
  locations = {
    United_States = {
        location1 = "Eastus",
        location2 = "CENTRALUS"
    }
  }
}

# Exemplo utilizando o For_each para criar resource_groups em cada região definida nos locals.

resource "azurerm_resource_group" "example" {
  for_each = local.locations.United_States
  name     = "my-rg-ing-${each.value}"
  location = each.value
}