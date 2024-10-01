create table clientes (
	id serial primary key,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	rut varchar(10) not null unique,
	telefono varchar(20),
	email varchar(50) not null

)
select * from clientes
drop table clientes

create table cuenta(
	id serial primary key,
	nro_cuenta varchar(15) not null unique,
	fecha_creacion date not null,
	balance numeric check( balance > 0),
	id_cliente serial references clientes(id)
)
select * from cuenta

insert into clientes (nombre, apellido, rut, telefono, email)
values('aaa','sss','1-1','131231','eewrwer@dsfsdfs.cl')

insert into cuenta (nro_cuenta, fecha_creacion, balance, id_cliente)
values ('a100011', '2024-09-30', 1000, 2)

select cli.*, cu.* from clientes cli
inner join cuenta cu
on cli.id = cu.id_cliente
