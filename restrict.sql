create table clientes 
(id integer unique not null, name varchar(25) not null, email
varchar(50));

insert into clientes(id, name) values (1, 'Nombre 1');
insert into clientes(id, name) values (2, 'Nombre 2');
insert into clientes(id, name) values (3, 'Nombre 3');

SELECT * from clientes

update clientes set email = '' 
where email is null

ALTER TABLE clientes ALTER COLUMN email SET NOT NULL
insert into clientes(id, name,email) 
values (5, 'Nombre 4','fdfsd');
