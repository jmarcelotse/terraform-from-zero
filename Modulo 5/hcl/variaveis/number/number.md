# Variaveis Number

As variáveis do tipo **number** nos permite trabalhar com números, que podem ser inteiros ou de ponto flutuante(quebrados).

**Exemplo**

```
...
variable "num_files" {
  type = number
  default = 2
}

locals {
    file_prefix = "foo"
}


resource "local_file" "foo" {
  content  = "foo!"
  filename = "c:/temp/${local.file_prefix}-${var.num_files}.txt"
}
```

Neste exemplo acima, criamos uma variável do tipo **number** e utilizamos o valor dela **"2"**, para criar um arquivo com o nome **foo-2.txt**

**Aprimorando o uso de uma variável number**
Estas variaveis do tipo **number** podem ser bem úteis quando queremos utilizar o valor númerico para criar um recurso mútliplas vezes por exemplo através de um loop ou uma contagem.

