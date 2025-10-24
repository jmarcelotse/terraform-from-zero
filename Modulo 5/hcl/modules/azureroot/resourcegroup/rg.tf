terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.58.0"
    }
  }
}

provider "azurerm" {
  features {}

  # Configuration options
}
# locals {
#     resource_count = "2"
# }
resource "azurerm_resource_group" "example" {
# count = local.resource_count
# name = "example-${count.index}"
 name = "example"
 location = var.location
}