variable "name" {
  type    = string
  default = "Alice"
}

output "greeting" {
  value = format("Olá, %s!", var.name)
}

variable "conection_string" {
  type = string
  default = "mongo://sldeasuybasi.mongo.br"
}

output "mongo_connection_string" {
  value = format("%s:3550",var.conection_string)
  
}
