terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.67.0"
    }
  }
  # backend "azurerm" {
  #   storage_account_name = "abcd1234"
  #   container_name       = "tfstate"
  #   key                  = "prod.terraform.tfstate"

  #   # rather than defining this inline, the Access Key can also be sourced
  #   # from an Environment Variable - more information is available below.
  #   access_key = "abcdefghijklmnopqrstuvwxyz0123456789..."
  # }
}

provider "azurerm" {
  features {
    
  }
  # Configuration options
}