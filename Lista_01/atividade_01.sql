-- Gen

CREATE DATABASE servico_rh;
use servico_rh;

CREATE TABLE tb_colaboradores
(
colaboradorID int auto_increment,
sobrenome varchar(255) not null,
nome varchar(255) not null,
cpf text,
descricao varchar(255),
primary key (colaboradorID)
);

alter table tb_colaboradores add salario int not null;
alter table tb_colaboradores modify salario decimal(6,2);

insert into tb_colaboradores(sobrenome, nome, cpf, descricao, salario)
values ("Apolinário", "Marcelo", "12345678-9", "Dev Full-Stack", 2001);
insert into tb_colaboradores(sobrenome, nome, cpf, descricao, salario)
values ("Oirnáilopa", "Olecram", "87654321-9", "Dev Front", 1900);
insert into tb_colaboradores(sobrenome, nome, cpf, descricao, salario)
values ("Test", "Tset", "98765432-1", "Dev Backend", 2201);
insert into tb_colaboradores(sobrenome, nome, cpf, descricao, salario)
values ("Qa", "Qa Test", "12345678-9", "QA", 1800);
insert into tb_colaboradores(sobrenome, nome, cpf, descricao, salario)
values ("PO", "Po Test", "23456789-1", "Po", 2301);

-- delete from tb_colaboradores where colaboradorID = 3;

SELECT * from tb_colaboradores where salario > 2000;

SELECT * from tb_colaboradores where salario < 2000;

SELECT * from tb_colaboradores;