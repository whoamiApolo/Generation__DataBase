create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
	id int auto_increment,
    tamanho char(2) not null,
    primary key (id)
);

create table tb_pizzas(
	id int auto_increment,
    sabores varchar(255) not null,
    descricao varchar(255) not null,
	preco decimal(10,2),
    primary key (id),
    categoria_id int,
    foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_categorias(tamanho) values 
("P"),
("M"),
("G"),
("GG");

insert into tb_pizzas(sabores, descricao, preco, categoria_id) values
("Doce", "Pizza de Chocolate com Morango", 55, 1),
("Doce", "Pizza de Chocolate com Abacaxi", 48, 2),
("Tradicional", "Pizza de Portuguesa", 39, 4),
("Tradicional", "Pizza de Calabresa", 39, 3),
("Tradicional", "Pizza de Marguerita", 33, 4);

select * from tb_pizzas where preco > 45;

select * from tb_pizzas where preco > 50 and preco < 100;

select * from tb_pizzas where descricao like '%m%';

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id;

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.categoria_id
where sabores = 'doce';