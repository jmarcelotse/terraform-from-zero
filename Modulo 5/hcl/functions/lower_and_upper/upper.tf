variable "name_upper" {
  type    = string
  default = "Roger"
}

output "uppercase_name" {
  value = upper(var.name_upper)
}