variable "locations" {
  type = map
  default = {
    USEast = "Illinois"
    USCentral  = "Iowa"
    SouthBrazil = "Curitiba"
  }
}

output "locations_name" {
  value = lookup(var.locations, "BrazilEast", "Chave não encontrada")
}

variable "address_range" {
  type = map
  default = {
    internal = "10.0.0.0/24"
    public = "172.16.32.0/24"
  }
}

output "address_range" {
  value = lookup(var.address_range,"internal","rede não encontrada")
}

