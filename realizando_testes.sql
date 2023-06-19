-- rand() valor aleatório
-- max() maior valor
-- min() menor valor
-- avg() media dos valores
-- sum() soma dos valores
-- count() retorna um valor

create database testes;
use testes;

create table if not exists users
(
id int unsigned auto_increment,
first_name varchar(255) not null,
last_name  varchar(255) not null,
email varchar(255) not null,
password_hash int unsigned,
primary key(id)
);

insert into users (first_name, last_name, email, password_hash) values
('Olecram', 'Oiranilopa', 'oiranilopa@example', round(rand() * 100000) ),
('Oiranilopa', 'Olecram', 'olecram@example', round(rand() * 100000) ),
('Max', 'Oiranilopa', 'max@example', round(rand() * 100000) ),
('Max', 'Olecram', 'olecram_max@example', round(rand() * 100000) ),
('Xam', 'Oiranilopa', 'xam@example', round(rand() * 100000)
);

update users 
set password_hash = round(rand() * 1000000) 
where id;

alter table users
add salario int unsigned not null;

update users 
set salario = round( rand() * 100000 )
where id;

alter table users
modify salario 
decimal(10,2);

select * from users;
describe users;
-- select round(rand()* 10000, 2);