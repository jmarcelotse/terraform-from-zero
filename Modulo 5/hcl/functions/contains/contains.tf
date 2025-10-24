variable "fruits" {
  type    = list
  default = ["maçã", "laranja", "banana"]
}

output "contains_fruit" {
  value = contains(var.fruits, "laranja")
}

variable "list_management_ports_to_block" {
  type = list
  default = ["8080","22","3389"]
}

output "contains_management_ports" {
  value = contains(var.list_management_ports_to_block,"165")
}