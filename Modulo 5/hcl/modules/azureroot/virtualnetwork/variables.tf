variable "location" {
    type = string
    description = "(optional) describe your variable"
}

variable "resource_group_name" {
    type = string
    description = "(optional) describe your variable"
}
variable "virtual_network_name" {
    type = string
    description = "(optional) describe your variable"
}

variable "address_space" {
  type = list(string)
}
variable "subnet_name" {
    type = string
    description = "(optional) describe your variable"
}
variable "subnet_prefix" {
  type = string
}
variable "environment" {
  type = string
  description = "(optional) describe your variable"
}
