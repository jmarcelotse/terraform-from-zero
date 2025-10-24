resource "azurerm_public_ip" "pip" {
  name                = var.pip_name
  resource_group_name = var.pip_rg
  location            = var.location
  allocation_method   = var.method
}