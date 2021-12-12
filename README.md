# SumeSoftware

Esse repositório contem o necessário para executar o desafio final do curso de desenvolvedor fullstack júnio do LCCV/UFAL.


## Instruções

Primeiramente, esse repósitorio agrega os repositórios do [backend](https://github.com/WesleyMPG/final-backend) e do [frontend](https://github.com/WesleyMPG/final-frontend) como submódulos e no Readme de cada um estão mais informações que devem ser lidas. No entanto todas as instruções para executar o projeto estão aqui.


Clone o repositório com:
> $ git clone --recursive https://github.com/WesleyMPG/desafio-final.git


### Executar criando as imagens

Dentro do diretório criado inicie os containers (pode demorar um pouco por causa da criação das imagens):
> $ docker-compose up -d


### Executar baixando as imagens

Para ter uma garantia no caso de algum problema inesperado eu coloquei imagens do backend e do frontend no dockerhub. Para instalar dessa forma:

- Remova o arquivo docker-compose.yml do diretório
- Renomeie o arquivo dockerhub.docker-compose.yml para apenas docker-compose.yml
- E execute: 
> $ docker-compose up -d


### Populando o banco de dados

O arquivo migrateAndPopulate.sh contem os comandos para realizar a migração do django para o banco de dados e popular as tabelas, então:
> $ chmod +x migrateAndPopulate.sh

> $ ./migrateAndPopulate.sh


Se você está no windows os comandos são:
> $ docker-compose run back python manage.py migrate

> $ docker-compose run back python manage.py loaddata cadastro_de_bens/fixture/db_data.json

---

Depois disso o site deve estar rodando em http://localhost:4200

OBS: o volume do banco de dados é montado no diretório do projeto então será necessário permissão de admininstrador para excluí-lo.
