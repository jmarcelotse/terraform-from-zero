# Configurando o Ambiente no Azure

- Instalar o [Azcli](https://learn.microsoft.com/pt-br/cli/azure/install-azure-cli)
- Criar uma [Assinatura do Azure](https://azure.microsoft.com/pt-br/free/).
- Criar um [Service Principal](https://learn.microsoft.com/en-us/azure/active-directory/develop/howto-create-service-principal-portal). 
- Obter **subscription_id** e os dados de credenciais de acesso do service principal: **AppId(Clientid)**, **secret** e **tenant_id**.
- Configurar as [permissões](https://learn.microsoft.com/en-us/azure/active-directory/develop/howto-create-service-principal-portal) para o Service Principal na Assinatura.

- Configurar as credenciais localmente via variáveis de ambiente.
**Exemplo:**
Vamos exportar as váriaveis de ambiente definindo os valores obtidos do service principal e assinatura.
**Windows**
```
$Env:ARM_SUBSCRIPTION_ID = "" 
$Env:ARM_CLIENT_ID = "" 
$Env:ARM_CLIENT_SECRET = ""
$Env:ARM_TENANT_ID = ""

```

**Linux**
```
export ARM_SUBSCRIPTION_ID="" 
export ARM_CLIENT_ID="" 
export ARM_CLIENT_SECRET=""
export ARM_TENANT_ID=""
```
