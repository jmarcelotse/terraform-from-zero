# Componentes Principais do Terraform:

Neste módulo do curso falaremos sobre os componentes do Terraform, como:
 
 - Arquivos de Configuração
 - Providers
 - Resources
 - State (estado)
 - Comandos do Terraform


# Arquivos de Configuração
Os arquivos de configuração do Terraform são escritos em linguagem de configuração declarativa, onde deinimos os recursos de infraestrutura que devem ser provisionados. Os arquivos são geralmente escritos com a extensão ".tf".


# Providers(Provedores/Plugins)
Os providers são os plugins do Terraform que permitem a comunicação com os serviços de nuvem como AWS, Azure e Google cloud por exemplo. Então cada um desses providers são responsáveis por gerenciar recursos específicos nas plataformas de nuvem.


# Resources(Recursos)
Os Recursos são os elementos que provisionados pelo Terraform utilizando um provider. Por exemplo: Instâncias de EC2 da AWS, Grupos de Recursos do Azure ou GKE do GCP.


# State(Estado)
O State(Estado) é basicamente o registro dos recursos que foram provisionados pelo Terraform e como falamos anteriormente este estado é gravado em um arquivo de estado, normalmente chamado terraform.tfstate. Este é o coração do Terraform, é através do Estado que o Terraform consegue saber exatamente as mudanças que precisam ser feitas na infraestrutura em relação com à configuração atual da mesma.




# Comandos do Terraform
O Terraform possuí uma série de comandos, onde cada um serve para um propósito, mas os mais conhecidos e utilizados são:

 - **terraform init:**  Que serve para iniciar o código e baixar os providers declarados na nossa configuração.
 - **terraform plan:**  Que serve para gerar o plano de execução, da configuração declarada.
 - **terraform apply:** Que serve para aplicar o plano de execução gerado, realizando então o provisionamento da infraestrutura ou modificação da infraestrutura desejada.

 Além desses temos alguns outros bem importantes também como:
 
 - **terraform destroy:** Que serve para insturir o Terraform à destruir as modificações ou provisionamento realizados,
 - **terraform validate:** Que serve para validar se há algum problema de sintaxe no nosso código.
