module "resource_group" {
  providers = {
    azurerm.provider_1 = azurerm.provider_1
    azurerm.provider_2 = azurerm.provider_2
    
  }
  source = "./resourcegroup"
  resource_group_name = "my-rg"
  location = "EASTUS"
}