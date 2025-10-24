# Configurando nosso ambiente:

**Criando um Repositório para o nosso Código.**

1. Faça login no **GitHub** em sua conta. Se você ainda não tiver uma conta no GitHub, pode criar uma gratuitamente.

2. No canto superior direito da tela, clique no botão **+** e selecione **New repository**.

3. Na página **Create a new repository**, escolha um nome para o seu repositório. Certifique-se de escolher um nome descritivo que reflita o conteúdo do repositório. Se preferir pode incluir uma descrição para o seu repositório.

4. Escolha se você quer que o repositório seja público ou privado. Repositórios públicos podem ser vistos por qualquer pessoa, já os repositórios privados só podem ser vistos pelas pessoas que você convidar.

5. Escolha se você quer criar um repositório vazio ou um repositório com um arquivo README.md. Usamos esse arquivo de texto para explicar mellhor o que o repositório contém e como usá-lo.

6. Em **Add .gitignore** selecione na caixa suspensa a opção **Terraform**. Assim o git ja vai ignorar a subida de arquivos do Terraform que são desnecessários ou sensíveis no repositório.

6. Em **Choose a license**, pode deixar como **None**.

7. Clique no botão **Create repository**.

```Show! Agora temos nosso repositório para continuar o curso.```


# Configurando o Visual Studio Code

**Clonando o repositório**

Agora vamos configurar o nosso ambiente de desenvolvimento do Visual Studio Code. Criaremos aqui nosso workspace e instalaremos algumas extensões.

1. Crie uma pasta na área de trabalho para o nosso projeto do Terraform. Essa pasta servirá para clonarmos nosso repositório de código criado anteriormente.
2. Abra o Visual Studio Code de preferência como Administrador.
3. Agora, clique em **View** na barra de menu superior.
4. Selecione **Command Palette** ou use o atalho de teclado **Ctrl + Shift + P** (Windows/Linux) ou **Cmd + Shift + P** (Mac).
5. Na caixa de pesquisa, digite **Git: Clone** e selecione a opção **Git: Clone** nos resultados da pesquisa.
6. Insira o URL do repositório que criamos e pressione **Enter**.
7. Clique em **Selecionar Pasta** e scolha a pasta que criamos para salvar o repositório clonado.
**O Visual Studio Code iniciará o processo de clonagem do repositório. Você pode monitorar o progresso na barra inferior.**
8. Assim que finalizar, uma caixa de diálogo irá surgir, selecione **Adicionar ao Workspace**.

```Pronto agora você já clonou o repo e podemos seguir em frente!```
**Instalando extensões**

No VSCODE podemos instalar extensões que nos ajudam a escrever o código. Vamos instalar duas extensõs:
 
 - HashiCorp Terraform


**HashiCorp Terraform**

1. Clique em **Extensions** na barra lateral esquerda ou use o atalho de teclado **Ctrl + Shift + X** (Windows/Linux) ou **Cmd + Shift + X** (Mac).
2. Na caixa de pesquisa, digite **Terraform** e selecione a extensão do **Terraform da HashiCorp** nos resultados da pesquisa.
3. Clique no botão **Install** para instalar a extensão.


# Configuração do Projeto

1. Agora na pasta raiz do repositório, crie uma nova pasta chamada **terraform-course**
2. Dentro da pasta, crie um arquivo chamado **main.tf**
3. Cole o código abaixo no arquivo e salve o arquivo.

```
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "random" {
  # Configuration options
}

variable "pet_type" {
    type = string
    description = "Qual o tipo do PET"
    default = "Cachorro"
}


resource "random_pet" "pet_name" {
  keepers = {
    # Generate a new pet name each time we switch to a new AMI id
    pet_type = var.pet_type
  }
}

output "pet_name" {
  value= random_pet.pet_name
}
```

4. Na barra superior clique em **Terminal**, depois **New Terminal** ou utilize o atalho **CTRL+SHIFT+'** do teclado.
5. O terminal irá abrir na pasta do seu repositório, navegue então até a pasta **terraform-course** que criamos.
6. Agora,execute o comando **terraform init** para inicializar o diretório Terraform.
7. Execute o comando **terraform plan** para verificar se a configuração está correta.
8. Execute o comando **terraform apply**, digite **yes** no prompt do terminal, para aplicar a configuração e criar um novo nome de pet.
9. Uma saída do comando com sucesso deve ser mostrado como abaixo:

```
...
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

pet_name = {
  "id" = "guiding-weasel"
  "keepers" = tomap({
    "pet_type" = "Cachorro"
  })
  "length" = 2
  "prefix" = tostring(null)
  "separator" = "-"
}

```

Pronto agora estamos 100% preparados para seguir em frente co o curso.

