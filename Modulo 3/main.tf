terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.48.0"
    }
  }
}

provider "azurerm" {
    features {}
  # Configuration options
}


resource "azurerm_resource_group" "example" {
  name = "teste"
  location = "EastUS"
}