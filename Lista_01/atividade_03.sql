-- order by nome desc
-- limit limita a quantidade de valores
-- offset utilizado para páginação
-- concat ('exemplo', nome)

create database if not exists escola;
use escola;

create table if not exists tb_estudantes
(
id int unsigned auto_increment,
nome varchar(255) not null,
sobrenome varchar(255) not null,
turma varchar(255) not null,
ra_aluno int not null,
primary key(id)
);

alter table tb_estudantes add notas int;

select * from tb_estudantes where id = 1;
update tb_estudantes set ra_aluno = 7070 where id = 1;

insert into tb_estudantes(nome, sobrenome, turma, ra_aluno) 
values ("Marcelo", "Apolinário", "Turma65", 1123);

update tb_estudantes set notas = 9 where id = 1;

insert into tb_estudantes(nome, sobrenome, turma, ra_aluno, notas) 
values ("Olecram", "Apolinário", "Turma65", 1323, 10);
insert into tb_estudantes(nome, sobrenome, turma, ra_aluno, notas) 
values ("Homem", "Aranha", "Turma65", 1333, 0);
insert into tb_estudantes(nome, sobrenome, turma, ra_aluno, notas) 
values ("Hulk", "Esmaga", "Turma65", 1222, 6);

select * from tb_estudantes where notas > 7;
select * from tb_estudantes where notas < 7;

show tables;
select * from tb_estudantes;