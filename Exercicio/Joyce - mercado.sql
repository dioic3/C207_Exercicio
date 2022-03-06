drop database if exists mercado;
create database mercado;

use mercado;

create table produto(
	codigo int, #código da pessoa
    nome varchar(50), #nome da pessoa
    preco float, #preço do produto
    fornecedor varchar(50), #fornecedor que oferece o produto
    primary key(codigo)
);

#inserção de dados
insert into produto(codigo, nome, preco, fornecedor) values (1234, 'Óleo', 8, 'Soya');
insert into produto(codigo, nome, preco, fornecedor) values (1357, 'Arroz', 28, 'BeansHouse');
insert into produto(codigo, nome, preco, fornecedor) values (3698, 'Feijão', 7.5, 'BeansHouse');
insert into produto(codigo, nome, preco, fornecedor) values (2370, 'Batata Baroa', 3, 'Legumes - To Go');
insert into produto(codigo, nome, preco, fornecedor) values (564, 'Batata Doce', 3.5, 'Legumes - To Go');
insert into produto(codigo, nome, preco, fornecedor) values (2141, 'Miojo', 0.9, 'Nissin');

#Mudando o fornecedor do produto com código 1234 para "Lisa"
update produto set fornecedor = 'Lisa' where codigo = 1234;

#Deletendo o produto de código igual a 2141
delete from produto where codigo = 2141;

#Busquem o nome de todos os fornecedores sem repetir
select distinct(fornecedor) from produto;

#Busque todos os dados dos produtos que tenham batata no nome
select nome, preco, fornecedor from produto where nome like "Batata%"; 

#Busque o nome e o fornecedor do produtos com preço acima de 5 reais
select nome, fornecedor from produto where preco > 5.0;

#Busque o menor preço entre os produtos da tabela
select min(preco), nome, fornecedor from produto;

#Busque a média dos preços dos produtos
select SUM(preco) from produto;
select count(preco) from produto;
select (SUM(preco)/count(preco)) from produto;
select AVG(preco) from produto;

#Busque o número de produtos inseridos na tabela
select count(codigo) from produto;

