variable "ports" {
  type    = list
  default = [8080, 8081, 8082]
}

output "port_range" {
  value = join(",", var.ports)
}

variable "list_management_ports" {
  type = list
  default = [22,3389,165]
}

output "list_management_ports" {
  value = join("_",var.list_management_ports)
}

