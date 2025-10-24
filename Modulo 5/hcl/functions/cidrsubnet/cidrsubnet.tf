variable "base_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

output "subnet_cidr" {
  value = cidrsubnet(var.base_cidr_block, 4, 2)
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["${var.base_cidr_block}"]
  
  subnet {
    name           = "subnet1"
    address_prefix = cidrsubnet(var.base_cidr_block,8,2)
  }

  subnet  {
    name = "subnet2"
    address_prefix = cidrsubnet(var.base_cidr_block,8,4)
  }

}