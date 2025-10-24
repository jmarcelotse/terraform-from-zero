# Variáveis

As Input Variables(Variaveis de Entrada) ou simplesmente variáveis, nos permitem personalizar aspectos dos módulos Terraform sem alterar o próprio código-fonte do módulo. Essa funcionalidade permite que possamos compartilhar módulos entre diferentes configurações Terraform, tornando nossos módulos reutílizaveis.

**Exemplo: Utilizando variáveis**

```
variable "resource_group_name" {
  type        = string
  description = "Nome do Resource Group"
}
variable "location" {
  type        = string
  description = "Location do Resource Group"
}


resource "azurerm_resource_group" "grupo_de_recursos" {
  name     = var.resource_group_name
  location = var.location
}

```

**Explicação**
"No código acima duas variáveis **resource_group_name**  e **location**, que é utilizada depois no resource(**grupo_de_recursos**). O Módulo que cria o resource group irá pegar os valores das variáveis, dessa forma temos um código reutilizável.


# Tipos de Variáveis
Existem diversos Tipos de variáveis que podemos declarar no Terraform. Cada tipo tem sua característica, sendo classificadas em tipos primitivas e complexas.
Abaixo seguem os tipos separados, veremos como declará-los e utilizá-los nos próximos vídeos.

**Tipos: Primitivos**
- string
- number
- bool

**Tipos: Complexos**
- list
- set
- map
- object
- tuple













