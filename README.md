# Desafio Olx

##### Requisitos do desafio
 - Tela do atendente deve conter 4 campos (tipo,motivo,estado e detalhes). 
 - O código necessário para registrar estas 4 informações mais a data e hora que o atendimento foi encerrado (campo automático não informado pelo atendente)
 - listar todos os atendimentos sem filtros e paginação, agrupando por dia do atendimento, estado e ordenados pela data de atendimento, do mais atual para o mais antigo. 
 - Criar testes automatizados nas partes que considerar essenciais para o projeto (TDD ou BDD). 
 - Coloque este projeto em seu repositório com um arquivo README.md.

##### Ferramentas, tecnologias e serviços utilizados
- Astah community - para fazer o diagrama de classe do mini framework
- PhpStorm - IDE para codificação
- GitHub - Hospedar repositório
- Git - Versionamento
- MYSQL 5.5.46 - Banco de dados
- PHP 5.6 - Linguagem de programação
- CSS3 - Front-end
- HTML5 - Front-end
- APACHE2 - Servidor 

Para a realização do desafio, decidi fazer um mini framework MVC que segue a estrutura de pastas e arquivos.

- app - Pasta que contem as views, controllers, models e assets (css,js,svg,img)
- build - Pasta que no caso de deploy teria os arquivos minified de cs, js, html e etc
- config - Pasta que contém arquivo de configuração de url, database, versão do framework e etc em arquivo .json.
- core - Pasta que contém a classes cores para o funcionamento do framework.
- sql - Pasta que contém o dump.sql para o banco de dados
- tests - Pasta que contém os testes unitários
- utils - Pasta que contém classes com métodos de apoio.
- index.php - Gerencia qualquer requisição do framework
- .htaccess - direciona qualquer requisição para o arquivo index.php

##### Instalação
- Clone o projeto para o diretório index do apache server 
- Importe dump.sql que se encontra na pasta sql para o database MYSQL
```sh
mysql -u username -p database_name < dump.sql
```
- Altere o arquivo config/database.json para configurar os parametros do database.
- Para executar os testes é exigido no minimo o php 5.6 ou superior.
- Instalando o PhpUnit (Exige o php 5.6 ou superior).
```sh
$ wget https://phar.phpunit.de/phpunit.phar
$ chmod +x phpunit.phar
$ sudo mv phpunit.phar /usr/local/bin/phpunit
$ phpunit --version
```
- Execute os testes com o seguinte comando
```sh
phpunit -debug --colors diretorio-raiz-do-framework/tests
```
Obrigado.
