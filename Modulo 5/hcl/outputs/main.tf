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
  file_prefix = "foobaa"
}

resource "local_file" "foo" {
  content  = "foo!"
  filename = "c:/temp/${local.file_prefix}.bar"
}

output "foo_file_permission" {
  value = local_file.foo.file_permission
}
output "foo_content" {
    value = local_file.foo.content 
}
