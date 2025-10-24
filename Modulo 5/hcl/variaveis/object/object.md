# Variaveis Complexas: Object

As variáveis do tipo object nos ajuda a representar um conjunto de valores relacionados que podemos estruturar de forma hierárquica.

# Então quando utilizar uma variavel do tipo object?

Podemos usá-las quando queremos agrupar informações relacionadas ou quando precisamos definir configurações mais complexas que não conseguimos facilmente representar em uma variável única e mais simples.

# Exemplo

Seguindo nosso exemplo anterior.
Imagine que você precisa criar 2 redes virtuais no Azure, uma para ambiente de PROD e outra para ambiente de DEV, porém cada rede possuí suas características únicas de Endereços de Rede, DNS, subnets e etc.

- PROD:

  Espaço de Endereços de Rede: 10.0.0.0/22
  DNS: 10.0.0.14, 10.0.0.15
  Subnets: Internal, Public e DMZ

- DEV:

  Espaço de Endereços de Rede: 192.168.0.0/22
  DNS: 192.168.0.14
  Subnets: Internal, Public


Podemos usar uma variavel do tipo **Object** e criar esses mapeamentos para cada virtual network e usá-los no nosso código.


```
variable "prod_vnet" {
  type = object({
    name                  = string
    address_space         = list(string)
    dns                   = list(string)
    subnets               = list(string)
    subnets_address_space = map(string)
    tags                  = map(string)
  })
  default = {
    name                  = "Prod"
    address_space         = ["10.0.0.0/22"]
    dns                   = ["10.0.0.14", "10.0.0.15"]
    subnets               = ["Internal", "Public", "DMZ"]
    subnets_address_space = {
      internal = "10.0.1.0/24"
      public   = "10.0.2.0/24"
      dmz      = "10.0.3.0/24"
    }
    tags = {
      environment = "production"
    }
  }
}

variable "dev_vnet" {
  type = object({
    name                  = string
    address_space         = list(string)
    dns                   = list(string)
    subnets               = list(string)
    subnets_address_space = map(string)
    tags                  = map(string)
  })
  default = {
    name                  = "Dev"
    address_space         = ["192.168.0.0/22"]
    dns                   = ["192.168.0.14"]
    subnets               = ["Internal", "Public"]
    subnets_address_space = {
      internal = "192.168.1.0/24"
      public   = "192.168.2.0/24"
      dmz      = "192.168.3.0/24"
    }
    tags = {
      environment = "development"
    }
  }
}





```






