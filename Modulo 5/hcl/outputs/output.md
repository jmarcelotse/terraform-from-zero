# Outputs
Os Outputs servem para fazer as informações da infraestrutura disponível via linha de comando, utilizamos isso através da declaração de **output values**, que nada mais são que os valores de saída que queremos.
**Exemplo:**
```
...
resource "azurerm_resource_group" "example" {
  name     = "meugrupoderecursos"
  location = "West Europe"
}
output "resource_group_name" {
  value = azurerm_resource_group.example.name
}
``` 

**Explicação:**
No código cima, estamos declarando a criação de um grupo de recursos no azure e exportando como um **output value(valor de saída)** o nome desse recurso, neste caso "meugrupoderecursos".


