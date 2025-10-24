data "local_file" "example" {
  filename = "${path.module}/data.txt"
}

output "file_content" {
  value = file("${data.local_file.example.filename}")  
}
