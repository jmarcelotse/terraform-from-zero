# Variáveis Complexas: list

A variavél do tipo **list** também está na categoria de Complex Types(Tipos Complexos) de váriaveis.
Uma variável **list** nos permite criar um conjunto de valores ordenados em uma lista.

**Exemplo.2**

A variável **location** do tipo **List** possui uma lista de localidades ordenadas.

```
variable "location" {
  type        = list(string)
  description = "Location do Resource Group"
  default = ["EastUS","WestUS","CentralUS"]
}

```

# Quando usar list ?
As váriaveis do tipo list, podem ser muito úteis quando queremos armazenar um conjunto de valores ordenados.

**Exemplo**

Imagine que você precisa criar 4 Grupos de Recursos na nuvem do Azure. Sendo:
 - 1x Resource Groups em EastUS
 - 1x Resource Group  em WestUS
 - 1x Resource Group  em CentralUS

