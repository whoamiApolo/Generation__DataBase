create database if not exists db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
	id int auto_increment,
    classe_especifica varchar(255) not null,
    descricao varchar(255) not null,
    primary key (id)
);

create table tb_personagens(
	id int auto_increment,
    nome varchar(255) not null,
    poder_ataque int not null,
    poder_defesa int not null,
    primary key(id),
    classe_id int,
    foreign key (classe_id) references tb_classes(id)
);

insert into tb_classes(classe_especifica, descricao) values
("Arqueiros", "Atirador"),
("Elfos", "Guerreiro"),
("Arqueiros", "Atirador"),
("Elfos", "Guerreiro"),
("Arqueiros", "Atirador");

insert into tb_personagens(nome, poder_ataque, poder_defesa, classe_id) values
("Pantera Negra", 9999, 9999, 1),
("Hulk", 7500, 7500, 1),
("Thanos", 2500, 1500, 2),
("Homem de Ferro", 1500, 2500, 2),
("Thor", 3500, 3000, 1),
("Homem Aranha", 999, 800, 2),
("Gavião Arqueiro", 800, 700, 1),
("Capitão America", 1500, 2500, 2);

select * from tb_classes;
select * from tb_personagens;

select nome, poder_ataque from tb_personagens where poder_ataque > 2000;

select nome, poder_defesa from tb_personagens where poder_defesa > 1000 and poder_defesa < 2000;

select nome, poder_ataque, poder_defesa from tb_personagens where nome like 'c%';

select * from tb_personagens 
inner join tb_classes on tb_classes.id = tb_pertb_categoriastb_produtostb_usuariostb_usuariostb_usuariostb_usuariostb_categoriassonagens.classe_id;

select * from tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.classe_id
where classe_especifica = "Arqueiros";

