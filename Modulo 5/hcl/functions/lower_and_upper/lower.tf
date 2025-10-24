variable "name" {
  type    = string
  default = "Roger"
}

output "lowercase_name" {
  value = lower(var.name)
}

variable "storage_name" {
  type = string
  default = "MY-STORAGE"
}

resource "azurerm_storage_account" "example" {
  name = lower(var.storage_name)
}


