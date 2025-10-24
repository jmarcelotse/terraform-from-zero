# Modules(Módulos)
Os módulos são contêineres para **vários recursos que são usados juntos**. Um módulo consiste em uma coleção de arquivos (.tf) mantidos juntos em um diretório. 

# Root Modules(Módulos pai)

Toda configuração utilizando Terraform possuí ao menos um módulo, conhecido como seu  **root module** ou **módulo pai**. Esse módulo nada mais é que, arquivos (**.tf**) que definem recursos e estão localizados na raiz do diretório da configuração.

# Child Modules(Módulos filho)

Um módulo Terraform (geralmente o módulo root de uma configuração) pode **chamar outros módulos para incluir seus recursos na configuração**. Os módulos que são chamados por outro módulo é identificado como um **módulo filho** enquanto os módulos que chamam outros módulos são identificados como **calling modules**.

Estes módulos filho podem ser chamados várias vezes dentro da mesma configuração, e Várias configurações podem usar o mesmo módulo filho.

**Exemplo:**
Uma estrutura de módulos em um repositório github. Onde Azure Module seria o **root module** e os demais seriam todos **child modules**

![image](https://github.com/Rogerssouza/curso-terraform-do-zero-ao-necessario/assets/99515062/6cd00b4e-34e6-4a34-ad2d-fdd8c6b34f00)



# Published Modules(Módulos Publicados)

Além dos módulos criados localmente em sua máquina, o Terraform também consegue importar módulos de repositórios ou locais publicos e privados. Isso faz com que possamos desenvolver nossos módulos e compartilhar com outras pessoas para uso.
Alguns exemplos são os módulos disponíveis no **Terraform Registry** os quais são públicos e gratuitos para uso.

# Usando Módulos
Para usar os módulos, temos que usar bloco **Module**, que possui a sintaxe abaixo e alguns argumentos obrigatórios:


```
module "servers" {
  source = "./app-cluster"

  servers = 5
}

```

**Argumentos Obrigatórios**
 - Source: Todos os módulos requerem um argumento **source**, que é um meta-argumento definido pelo Terraforme. Seu valor é o caminho para um diretório local que contém o arquivos de configuração do módulo, ou uma fonte de módulo remoto que o Terraform deve baixar e usar. 

**Argumentos Opcionais**
São argumentos que referem-se a variaveis de entrada, no exemplo acima identificados por **servers = 5** onde servers é uma variavel de entrada.

**Meta-Argumentos Adicionais**
- Version: Normalmente usado ao consumir módulos de um registro externo
- count - Usado para criar múltiplas instancias de um mesmo módulo único.
- for_each - Usado para criar criar múltiplas instancias de um mesmo módulo único.
- providers - Usado para prover informações dos providers em uso em um child module.
- depends_on - Usado apra infomar uma dependência explicita entre um módulo e outros usados.



