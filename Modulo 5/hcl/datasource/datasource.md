# Data Sources
As **Data Sources (origens de dados)** são usadas para obter dados de recursos que foram criados por fora do Terraform.

Para trabalharmos com DataSources, normalmente cada provider disponibiliza os templates de datasources para os tipos de recursos que possuem.
Cada Data Source(Origem de Dados), nos fornecerá então uma série de atributos do recurso remoto como: id, nome e etc.

**Exemplo**
Obtendo os dados de um Grupo de Recursos no Azure, que foi criado fora do Terraform.

```
...
data "azurerm_resource_group" "myrg" {
  name = "rodnet-prod"
}

output "name" {
  value = data.azurerm_resource_group.myrg.name
}

```
# Usando o Data Source para criar recursos

Depois podemos usar os dados obtidos através do Data Source(Origem de Dados) para criar recursos reutilizando as informações obtidas.
Como por exemplo, criar uma Rede Virtual dentro de um Grupo de Recursos implantado fora do Terraform, usando o nome do Grupo de Recursos obtido, anteriormente.


# Como usar o Data Sources

A sintaxe é simples.
Começamos com a palavra **data** seguido do tipo de recurso **azurerm_resource_group** o nome que daremos à essa instância de recurso de dados **myrg**, por fim abrimos chaves **{}** e dentro das chaves passamos os parametros que estarão descritos na documentação official do provider.
Por fim, podemos referencia ro valor obtido, através da sintaxe data.<tipoderecurso>.<nomedainstanciadorecurso>.<atributoexportado>: 

**Exemplo:**
  
  **data.azurerm_resource_group.myrg.name**
