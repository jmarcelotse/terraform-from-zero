terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.58.0"
      configuration_aliases = [ azurerm.provider_1,azurerm.provider_2 ]
    }
  }
}

provider "azurerm" {
  features {}
    alias = "provider_1"
    # Configuration options
    subscription_id = "" # Subscription 1
    tenant_id = ""

}
provider "azurerm" {
  features {
  resource_group {
      prevent_deletion_if_contains_resources = true
  }
  }
    alias = "provider_2"
     
    subscription_id = "" # Subscription 2
    tenant_id = ""
 
}