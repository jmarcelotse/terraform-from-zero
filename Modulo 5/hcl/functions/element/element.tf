variable "fruits" {
  type    = list
  default = ["maçã", "laranja", "banana","abacaxi"]
}

output "selected_fruit" {
  value = element(var.fruits,3)
}

