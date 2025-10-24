# Linguagem de Configuração do Terraform
Precisamos conhecer alguns aspectos de sintaxe da linguagem de configuração do Terraform para então entrarmos com a mão na massa, na nossa análise de caso e deploy de uma infraestrutura utilizando o Terraform. Vamos falar sobre, sintaxe de configuração, argumentos e então falar de alguns itens que utilizamos com a linguagem de configuração do Terraform como: locals, variaveis, outpus, data sources e módulos.

# Sintaxe de Configuração
O Linguagem do Terraform possuí uma sintaxe nativa, que é mais fácil de ser lida e entendida por nós humanos, pois trabalha de forma declarativa utilizando blocos e argumentos.
Também é possível escrever códigos do Terraform em JSON, porém essa é uma linguagem mais díficil para nós humanos lermos e editarmos.
O nome dessa sintaxe de baixo-nível da linguagem do Terraform é chamada de HCL (Hashicorp Configuration language).


# Argumentos e Blocos

Como dito antes o Terraform possuí uma linguagem declarativa que trabalha em torno de **Argumentos** e **Blocos**"

**Argumentos**
Os argumentos atribuem um valor à um nome específico. São compostos de **argument name(nome do argumento)** e **argument value(valor do argumento)**
**exemplo:**
```
image_id = "abc123"

```

Neste exemplo **image_id** é o identificador antes do sinal de "=" e representa o **argument name(nome do argumento)** e a expressão **abc123** representa o **argument value(valor do argumento)**.
O contexto em que o argumento aparece determina quais tipos de valor são válidos (por exemplo, cada tipo de recurso tem um esquema que define os tipos de seu argumentos)

**exemplo:**

```
resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}

```
Neste exemplo **name** e **location** são **argument name(nome do argumento)** e **exemplo**, **West Europe** são **argument value(valor do argumento)**.


**Blocos**

Um bloco agrupa várias configurações relacionadas em um único objeto. Os blocos são definidos usando a sintaxe do HCL e contêm os argumentos e outros blocos aninhados que definem a configuração para um recurso específico ou uma seção de um arquivo de configuração.
**exemplo:**

```
resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}

```

No exemplo acima, o bloco **resource** está sendo usado para definir um recurso neste caso **azurerm_resource_group** que representa um grupo de recursos no provider do azurerm que é o provider da nuvem da Microsoft, o Azure. Também podemos usar os Blocos de forma aninhada, para agrupar vários recursos relacionados, criando assim módulos reutilizavel, falaremos mais sobre módules adiante.



