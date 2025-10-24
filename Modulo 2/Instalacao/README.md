# Instalando o Terraform
Nesse módulo nós vamos instalar e configurar o terraform

**Pré-requisitos**
Certifique-se de que você tem as seguintes coisas instaladas no seu computador:

[![Git](https://img.shields.io/badge/Git-v2.39-orange)](https://git-scm.com/)

![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-1.53.0-blue.svg)

# Instalação
Eu separei a instalação por sistema operacional, Windows, Linux e MacOS. 

**Windows**

1. Baixe o instalador do Terraform para Windows: https://www.terraform.io/downloads.html
2. Um arquivo **Zip** será baixado, extraia o arquivo zip para uma pasta de sua escolha, recomendo colocá-la no C:\ do seu PC
3. Agora a gente precisa configurar o PATH do executável nas variáveis de ambiente do Windows. Então adicione a pasta que você extraiu o Terraform ao PATH do Windows. Para fazer isso, siga estes passos:

**Configuração do PATH do Terraform Manualmente**
 - Vamos abrir o **Painel de Controle** e clicar em **Sistema e Segurança**.
 - Em seguida, vamos clicar em **Sistema** e, em seguida, clique em **Configurações avançadas do sistema**.
 - Na aba **Avançado**, clique em **Variáveis de Ambiente**.
 - Em **Variáveis do Sistema**, encontre a variável **PATH** e clique em **Editar**.
 - Adicione o caminho para a pasta que você extraiu o Terraform (por exemplo, C:\terraform) no final da lista de valores separados por ponto e vírgula.
 - Daí só clicar em "OK" em todas as janelas abertas para salvar as alterações.

**Linux**

1. Abra o terminal e execute o seguinte comando para baixar o arquivo zip do Terraform:
```
wget https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_linux_amd64.zip

```
2. Crie uma pasta chamada, terraform no caminho /usr/local/bin
```
mkdir /usr/local/bin/terraform

```
3. Extraia o arquivo zip que você baixou para esta pasta:
```
unzip terraform_1.1.4_linux_amd64.zip -d /usr/local/bin/

```
4. Adicione a pasta que você extraiu o Terraform ao PATH do Linux. Para fazer isso, siga estes passos:

 - Abra o arquivo **.bashrc** no seu editor de texto.

 - Adicione a seguinte linha ao final do arquivo:

 ```
export PATH=$PATH:/usr/local/bin

 ```


**MacOS**

1. Abra o terminal e execute o seguinte comando para baixar o arquivo zip do Terraform:
```
curl -O https://releases.hashicorp.com/terraform/1.1.4/terraform_1.1.4_darwin_amd64.zip

```
2. Crie uma pasta chamada, terraform no caminho /etc/bin
```
mkdir /usr/local/bin/terraform

```
3. Extraia o arquivo zip que você baixou para esta pasta:
```
unzip terraform_1.1.4_darwin_amd64.zip -d /usr/local/bin/terraform

```
4. Adicione a pasta que você extraiu o Terraform ao PATH do MacOS. Para fazer isso, siga estes passos:

Abra o arquivo **.bash_profile** no seu editor de texto.

Adicione a seguinte linha ao final do arquivo: 

```
export PATH=$PATH:/usr/local/bin/terraform

```
5. Salve o arquivo e feche o editor de texto.

Execute o seguinte comando para atualizar as variáveis de ambiente:

```
source ~/.bash_profile
```

