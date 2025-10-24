### Caso Rodnet Inc

# Sobre a Empresa

A Rodnet Inc é uma consultoria de TI.
A venda dos serviços e captação de novos clientes é feita via o site da empresa.

# Sobre o Problema

Atualmente a empresa está passando por instabilidades no seu site como lentidão e indisponibilidade e enfrentando problemas com a administração da infraestrutura pois os servidores que hospedam o site e o banco de dados estão constantemente sofrendo shutdowns inesperados. O banco de dados do site é um SQL Server 2016 que têm dado muito problema também e a empresa tem gasto muito com a manutenção do banco em termos de performance e disponibilidade.
O site é desenvolvido em .Net, e está hospedado em um servidor web rodando em windows server Datacenter 2016 com as seguintes configurações 1vcpu,2GBRam e 100GB de espaço em disco HDD.
Essa infraestrutura está implantada em um datacenter pequeno da região, que está passando por problemas financeiros e tem deixado à desejar os serviços de manutenção, refrigeração e hospedagem.


# Sobre o objetivo da empresa
A empresa visa melhorar a **performance** e **reduzir custos** com CAPEX(custo dos servidores físicos) e OPEX ( custo de manutenção dos servidores), para isso ela decidiu migrar seu site para o Azure para se beneficiar de serviços PAAS oferecidos e o match com outras soluções Microsoft. E pra isso nos contratou para fazer a criação da infraestrutura.

# Requisitos Técnicos

- A infraestrutura deve scriptada utilizando terraform
- A implantação da infraestrutura deve ser feita via pipeline CI/CD
- O site deve ter SSL configurado
- O banco de dados deve ser consumido pelo app de via rede interna

# Recursos à serem criados
Região Padrão: EastUS
 - 1x Resource Group para o App
 - 1x Resource Group para o Banco
 - 1x Azure Web App
 - 1x SSL Configuration
 - 1x Azure SQL Database
 - 1x Azure Vitual Network: 172.16.32.0/20
    - 2x Subnets:
        - db-subnet: 172.16.33.0/24 
        - app-subnet: 172.16.34.0/24
 - 1x Network Security Group:
    - 1x Regras de NSG: 
        - Permitir a subnet app-subnet conectar na subnet db-subnet na porta 1433
        - Bloquear todo tráfego de entrada vindo da internet para a subnet db-subnet 



