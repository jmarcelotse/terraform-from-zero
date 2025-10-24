# Variáveis Complexas: Tuple

As variáveis do tipo tuple são usadas definir uma estrutura de dados que contém um número fixo de valores de diferentes tipos.

# Quando usamos uma tuple?

O tipo de dados tuple é útil quando você precisa passar um conjunto de valores como um único argumento, como para configurar um recurso ou módulo.

# Sintaxe de declaração

Para declararmos as variaveis tuple utilizamos um par de colchetes e dentro os tipos separados por vírgula.

**Exemplo**

```
variable "resource_group" {
  type = tuple([
    string,   # nome do grupo de recursos
    string    # localização do grupo de recursos
  ])
  default = [
    "nome-do-grupo-de-recursos",
    "westus2"
  ]
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group[0]
  location = var.resource_group[1]
}


```

Nesse exemplo, a variável resource_group é definida como uma tupla contendo dois elementos: uma string para o nome do grupo de recursos e outra string para a localização (ou região) do grupo de recursos.


