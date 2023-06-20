-- ecommerce produtos 8 registros return valor > 500 e valor < 500   att um registro
-- in seleciona elementos entre os valores enviados - vai validar se existe na table
-- between seleciona um range
-- like parecido (validar quando um dado termina com a letra b ou comece, por exemplo
-- % qualquer coisa
-- _ um caracter

create database if not exists e_commerce;
use e_commerce;

create table tb_produtos
(
produtoID int auto_increment,
departamento varchar(255),
marca varchar(255) not null,
descricao varchar(255) not null,
preco decimal(6,2),
cupom_desconto int,
primary key(produtoID)
);
--  (nome, preco, estoque, descricao, imagem)
alter table tb_produtos add imagem text not null;

insert into tb_produtos(descricao, preco, nome, estoque, imagem) 
values ("Tênis extremamente confortavel", 250, "Tênis Adidas", 11, "www.google.com.br");
insert into tb_produtos(descricao, preco, nome, estoque, imagem)
values("Camiseta do VJR.", 550, "Camiseta", 100, "www.adidas.com.br"); 
insert into tb_produtos(descricao, preco, nome, estoque, imagem)
values("WebCam LogiTech", 900, "WebCam", 40, "logitech.com.br");
insert into tb_produtos(descricao, preco, nome, estoque, imagem)
values("Cadeira Ergonômica", 2000, "Cadeira Flexform", 65, "flexform.com.br");

select * from tb_produtos where preco < 500;
select * from tb_produtos where preco between 500 and 1000;
select * from tb_produtos where preco > 500;
select nome from tb_produtos where nome like '%a'; 

show tables; -- Mostra as tabelas da base de dados
describe tb_produtos; -- Descreve as colunas da tabela
select * from tb_produtos;