# Terraform State

O Terraform deve armazenar o estado sobre sua infraestrutura gerenciada e a sua configuração. Este estado é usado pelo Terraform para mapear os recursos do mundo real para sua configuração, controle de metadados e para melhorar desempenho para grandes infraestruturas.


# Onde o State é salvo?

O Terraform por padrão, salva o arquivo de estado localmente em um arquivo chamado `terraform.tfstate`, mas a boa prática é salvá-lo em um `backend` remoto para garantir a segurança, versionamento e criptografia.


# Terraform Remote State

Quanto trabalhamos com o Terraform em um time, usar vários arquivos locais de estado pode complicar o uso da ferramenta, porque cada usuário terá que ter certeza que eles tenham sempre o último arquivo de estado mais atualizado antes de executar o terraform além de chegar que ninguém faça alteração ao mesmo tempo.

Pra resolvermos isso temos que usar o `remote state` que consiste em salvar o estado em um `backend remoto`, como `Hashicorp Consul`, `Amazon S3`, `Azure Blob Storage`, `Google Cloud Stage` e outros.

# Backend

Os backends são configurados utilizando um bloco de backend, como veremos no exemplo abaixo. Neste exemplo estamos configurando o Azure Blob Storage como backend para nosso arquivo de estado.

```
terraform {
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"
    storage_account_name = "abcd1234"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}



```




