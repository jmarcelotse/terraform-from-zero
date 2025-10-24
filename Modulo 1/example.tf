terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "random" {
  # Configuration options
}

variable "pet_type" {
    type = string
    description = "Qual o tipo do PET"
}


resource "random_pet" "pet_name" {
  keepers = {
    # Generate a new pet name each time we switch to a new AMI id
    pet_type = var.pet_type
  }
}


output "pet_name" {
  value= random_pet.pet_name
}