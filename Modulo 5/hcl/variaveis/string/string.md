# Variaveis: String

Essas são variáveis que contém algum valor em texto, tipo alguma palavra, uma frase ou até uma combinação de caracteres. 
**Exemplo**
```
variable "ola_mundo_var" {
  type    = string
  default = "Hello, world!"
}
```
Neste exemplo acima declaramos uma variavel do tipo **string(texto)** com o bloco **variable** onde passamos o nome de **ola_mundo_var** e utilizamos o parametro **default**, para indicar que esta variável possuí o valor **"Hello, world"**.


**Utilizando uma variável string**
Podemos utilizar esta variável de tipo string nos nossos códigos de terraform da seguinte maneira:

**Exemplo**
```
...

variable "ola_mundo_var" {
  type    = string
  default = "Hello, world!"
}

resource "local_file" "foo" {
  content  = var.ola_mundo_var
  filename = "c:/temp/olamundo.txt"
}

```
Neste exemplo, o **valor default** da variável **ola_mundo_var** irá ser inserido no arquivo criado com o resource local_file no caminho **c:\temp\olamundo.txt**.

**Combinando variaveis com outras cadeias de caracteres**
Podemos inclusive fazer o que chamamos de **interpolação de string** para unir ou criar novas cadeias de caracteres junto com uma variável.

**exemplo**

```
...

variable "ola_mundo_var" {
  type    = string
  default = "Hello, world!"
}
variable "ola_mundo_file_name" {
  type    = string
  default = "mundo"
}
resource "local_file" "foo" {
  content  = var.ola_mundo_var
  filename = "c:/temp/ola-${var.ola_mundo_file_name}.txt"
}

```

Neste exemplo, estamos usando a variável **ola_mundo_file_name** em conjunto com a palvra **ola** para formar o nome do nosso arquivo **"ola-mundo.txt"**


