create table clientes2 
(id integer unique not null, name varchar(25) not null, email
varchar(50));

insert into clientes2(id, name) values (1, 'Nombre 1');
insert into clientes2(id, name) values (2, 'Nombre 2');
insert into clientes2(id, name) values (3, 'Nombre 3');

select * from clientes2
ALTER TABLE clientes2 ALTER COLUMN email SET NOT NULL;

update clientes2 set email = '' where email is null;

ALTER TABLE clientes2 ALTER COLUMN email SET NOT NULL;

alter table clientes2 
	add column fecha date 

select COALESCE(100, null, 10, null, 1)

update clientes2 set fecha = '2022-10-10' where id = 3

UPDATE clientes2 SET fecha = COALESCE(fecha, '2024-01-01');
