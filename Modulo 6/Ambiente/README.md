# Preparação de ambiente: Estrutura de módulos

Com base na solução proposta, vamos quebrar nosso código em módulos, seguindo a estrutura abaixo:

- Módulo Resource Group (banco e app)
- Módulo Azure Web App(webapp e service plan)
- Módulo Azure SQL Database(banco)
- Módulo Virtual Network(Subnets e NSG)


# Preparação de ambiente: Authenticação do Azure

Agora precisamos pensar na **autenticação do Azure**, para que possamos criar a infraestrutura.
**Usaremos** para isso **uma conta de serviço** (Service Principal), a qual também será utilizada no pipeline, para autenticar no Azure. Vamos seguir os passos abaixo:


# 1º Passo: Configurações no Azure

- Criar a conta de serviço(Service Principal) no AzureAD.
- Criar uma senha(secret) para a para a conta de serviço.
- Conceder acesso à conta de serviço, na assinatura que vamos criar a infraestrutura. Utilizaremos a o perfil de Contribuidores(Contributor).

# 2º Passo: Configuração Local

- Autenticaremos com a conta de serviço, para isso precisamos setar algumas variaveis de ambiente com as informações da conta de serviço que são:

 - client_id(application_id)
 - client_secret(senha)
 - tenant_id
 - subscription_id

Esses valores, podem ser obtidos no portal do Azure.

- Definir as variáveis de ambiente, substituindo os valores pelos que acabamos de obter. Segue os comandos abaixo:

#### Linux: Shell

```
export ARM_CLIENT_ID="<application_id>"
export ARM_CLIENT_SECRET="<secret>"
export ARM_TENANT_ID="tenant_id"
export ARM_SUBSCRIPTION_ID="subscription_id"

```

#### Windows: Powershell

```
$env:ARM_CLIENT_ID = "<application_id>"
$env:ARM_CLIENT_SECRET = "<secret>"
$env:ARM_TENANT_ID = "tenant_id"
$env:ARM_SUBSCRIPTION_ID = "subscription_id"

```

- Agora precisamos configurar nosso arquivo de **providers.tf**, para conter as informações do provider que vamos usar e as informações da subscription e tenant onde iremos configurar a nossa infraestrutura.

#### example: providers.tf
```

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "<subscription_id>"
  tenant_id = "<tenant_id>"
}

```

- Último passo é testarmos nossa autenticação, pra isso podemos usar o terraform plan.






