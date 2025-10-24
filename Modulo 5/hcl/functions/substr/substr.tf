variable "message" {
  type    = string
  default = "Hello, World!"
}

output "substring" {
  value = substr(var.message, 0, 5)
}

variable "site_url" {
  type = string
  default = "http://www.cursoterraform.com.br/?!as092nsbx7wasn%"
}
output "site" {
  value = substr(var.site_url,0,32)
}


