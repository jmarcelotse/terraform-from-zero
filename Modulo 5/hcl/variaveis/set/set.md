# Variáveis Complexas: Set

A variavél do tipo **set** está na categoria de Complex Types(Tipos Complexos) de váriaveis.
Essa variável **set** nos permite criar um conjunto de valores em uma lista onde os valores dessa lista são exclusivos porém não ordenados. Dessa forma é muito similar às variáveis do tipo **list** porém nas listas os valores são ordenados.

# Quando usar variavies do tipo set então?

Sempre que você precisar trabalhar com uma lista de valores exclusivos e que não exijam uma ordem específica.

**Exemplo**

Suponha que você tenha que criar 3 resource groups e obrigatóriamente os nomes desses resource groups tem que ser: **Prod, Dev e Stg **.

Podemos usar uma variável do tipo **set** para criar essa lista de nomes exclusivos e usá-los na nossa configuração do Terraform.
```
variable "resource_groups" {
  type    = set(string)
  default = ["Prod", "Dev", "Stg"]
}

```
