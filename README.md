# Projeto Final de Banco de Dados - E-commerce de Eletrônicos

Este é o projeto final para a disciplina de Banco de Dados, no qual desenvolvemos um banco de dados para um e-commerce de eletrônicos utilizando MySQL. O projeto abrange todo o ciclo de vida de um banco de dados, incluindo criação de diagramas, scripts para criação, população, manipulação e documentação detalhada.

## Objetivo do Projeto

O objetivo deste projeto é modelar e implementar um banco de dados completo para operações de um e-commerce especializado em produtos eletrônicos. A base de dados inclui informações sobre produtos, usuários, pedidos, pagamentos, e categorias.

## Documentação Completa

A documentação completa do projeto pode ser encontrada no arquivo [NOME_DO_ARQUIVO_DE_DOCUMENTAÇÃO]. O arquivo contém informações detalhadas sobre o projeto, incluindo:

- Descrição do projeto
- Minimundo
- Diagramas utilizados
- Scripts utilizados
- Instruções para execução do projeto

## Diagramas de Banco de Dados

### Modelo Entidade-Relacionamento (ERD)
![ERD](link_para_imagem_erd.png)

### Diagrama de Esquema do Banco de Dados
![Diagrama de Esquema](link_para_imagem_schema.png)

## Scripts SQL

Os scripts SQL estão organizados no diretório `scripts/`. Destacamos alguns dos principais scripts:

- `create_database.sql`: Cria a estrutura do banco de dados.
- `populate_database.sql`: Preenche o banco de dados com dados de exemplo.
- `manipulate_database.sql`: Contém consultas e operações para manipulação do banco de dados.

## Instruções para Utilização

Facilitamos a configuração do MySQL com uma imagem Docker. Siga as instruções abaixo para clonar o repositório, construir a imagem Docker e iniciar o container.

O banco de dados será inicializado automaticamente ao iniciar o container. Em seguida, o root password será configurado como 12345, e a conexão será permitida de qualquer host na porta 3306 e as tabelas serão criadas e populadas com dados de exemplo.

### Clonar o Repositório

Para clonar o repositório, execute os seguintes comandos:

*Lembre-se de que é necessário ter o Git instalado.*

```bash
git clone https://github.com/gabrielfmcoelho/EcommerceDataBase.git
cd Ecommerce-Database
```

### Construir a Imagem Docker

*Certifique-se de que o Docker está instalado.*

Substitua `nome-da-imagem` pelo nome que você deseja dar à imagem.

```bash
docker build -t nome-da-imagem .
```

### Iniciar o Container

Substitua `nome-do-container` pelo nome que você deseja dar ao container e `nome-da-imagem` pelo nome da imagem que você definiu na etapa anterior. O parâmetro `-p` define a porta que será utilizada para acessar o MySQL, no formato `porta-do-host:porta-do-container`.

```bash
docker run -d -p 3306:3306 --name nome-do-container nome-da-imagem
```

Pronto! O projeto está pronto para ser utilizado.

### Parar o Container

Quando você terminar de utilizar o banco de dados, você pode parar o container com o seguinte comando:

```bash
docker stop nome-do-container
```

## Autoria
* Autor: Gabriel Coelho
* Autor: Samuel Martins
* Disciplina: Banco de Dados
* Tema: E-commerce de Eletrônicos
* Instituição: ICEV

## Informações adicionais

Caso tenha alguma dúvida ou sugestão, entre em contato conosco através do email [EMAIL_DE_CONTATO]