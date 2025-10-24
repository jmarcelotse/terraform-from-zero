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
provider "azurerm" {
  features {}
}

provider "random" {
}