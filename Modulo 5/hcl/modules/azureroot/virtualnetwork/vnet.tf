resource "azurerm_virtual_network" "example" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  
  subnet {
    name           = var.subnet_name
    address_prefix = var.subnet_prefix
  }
  tags = {
    environment = var.environment
  }
}