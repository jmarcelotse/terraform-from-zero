terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.58.0"
      configuration_aliases = [ azurerm.provider_1,azurerm.provider_2 ]
    }
  }
}
resource "azurerm_resource_group" "rg_tenant1" {
  provider = azurerm.provider_1
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_resource_group" "rg_tenant2" {
  provider = azurerm.provider_2
  name     = var.resource_group_name
  location = var.location
}