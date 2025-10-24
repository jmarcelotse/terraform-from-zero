terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.3.0"
    }
  }
}

provider "local" {
  # Configuration options
}


locals {
  file_prefix = "foo"
}

resource "local_file" "foo" {
  content  = "foo!"
  filename = "c:/temp/${local.file_prefix}.bar"
}

resource "local_file" "foo2" {
  content  = "foo2!"
  filename = "c:/temp/meuarquivo/${local.file_prefix}.bar"
}