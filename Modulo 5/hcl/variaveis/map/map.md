# Variaveis Complexas: Map

As váriaveis do tipo **map** permite que agente consiga armazenar vários pares de 
**chave-valor** em uma única váriavel.


# Quando usar uma variavel Map?

Você pode usar uma variavel do tipo **map** para armazenar informações de configuração que podem mudar dependendo do ambiente ou qualquer outro fator. E como elas permitem incluir vários pares de chave-valor, é bem útil para quando queremos acessar vários valores usando uma única váriavel, especialmente se esses valores mudarem com muita frequência.


**Exemplo**
Imagine que você precisa criar 2 redes virtuais no Azure, uma para ambiente de PROD e outra para ambiente de DEV. E você tem espaços de endereços de rede específicos definido para cada uma delas,sendo:

 - PROD(10.0.0.0/22)
 - DEV (192.168.0.0/22)


Podemos usar a variável do tipo **map** e armazenar nossos requisitos de rede por ambiente dentro de uma única variável.

```
variable "network_address_space" {
  type = map(string)
  default = {
    "PROD" = "10.0.0.0/22"
    "DEV" = "192.168.0.0/22"
  }
}

```
