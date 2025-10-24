# Terraform Functions

O terraform possuí algumas funções embarcadas que podemos chamar através das nossas expressões seja para transformar ou combinar valores.
Vamos ver algumas das principais funções usadas nos códigos por ai.

#### Função file

Usada para ler o conteúdo de um arquivo local.

**Exemplo**

```
data "local_file" "example" {
  filename = "${path.module}/data.txt"
}

output "file_content" {
  value = file("${data.local_file.example.filename}")
}
```

#### Função lookup

Usada para retornar o valor de um elemento dentro de um mapa, com base em sua chave:

**Exemplo**

```
variable "locations" {
  type = map
  default = {
    USEast = "Illinois"
    USCentral  = "Iowa"
  }
}

output "locations_name" {
  value = lookup(var.locations, "USEast", "Chave não encontrada")
}

```

#### Função join

Usada para combinar elementos de uma lista em uma única string, utilizando algum separador.

**Exemplo**

```
variable "ports" {
  type    = list
  default = [8080, 8081, 8082]
}

output "port_range" {
  value = join(",", var.ports)
}

```

#### Função element

Função usada para retornar um elemento de uma lista, dado um indíce específico.

**Exemplo**

```

variable "fruits" {
  type    = list
  default = ["maçã", "laranja", "banana"]
}

output "selected_fruit" {
  value = element(var.fruits, 1)
}

```

#### Função lower

Usada para converter uma string em minúsculas.

**Exemplo**

```
variable "name" {
  type    = string
  default = "Roger"
}

output "lowercase_name" {
  value = lower(var.name)
}

```

#### Função upper

Usado para converter uma string em maiúsculas.

**Exemplo**

```
variable "name" {
  type    = string
  default = "Roger"
}

output "uppercase_name" {
  value = upper(var.name)
}

```

#### Função substr

Essa função retorna uma parte de uma string, dado um índice de início e um comprimento.

**Exemplo**


```
variable "message" {
  type    = string
  default = "Hello, World!"
}

output "substring" {
  value = substr(var.message, 0, 5)
}


```

#### Função contains
Função que verifica se um elemento está presente em uma lista.


**Exemplo**

```
variable "fruits" {
  type    = list
  default = ["maçã", "laranja", "banana"]
}

output "contains_fruit" {
  value = contains(var.fruits, "laranja")
}
```

#### Função format

Função usada para formatar uma string.

**Exemplo**

```
variable "name" {
  type    = string
  default = "Alice"
}

output "greeting" {
  value = format("Olá, %s!", var.name)
}
```

#### Função cidrsubnet
Função usada para retornar um subconjunto de um bloco CIDR.

**Exemplo**

```
variable "base_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

output "subnet_cidr" {
  value = cidrsubnet(var.base_cidr_block, 8, 2)
}


```
