create table phones 
	(id int primary key, 
	modelo varchar(50), 
	mac_address int unique,
	fecha_fabricacion varchar(50)
);

insert into phones (id, modelo, mac_address, fecha_fabricacion) 
values (1, 'Iphone14', '1B:2A:3C:4D:5F:6G', '2022-09-09');

alter table phones 
	alter column mac_address type varchar(50);

select * from phones

alter table phones 
	alter column mac_address type int;

insert into phones (id, modelo, mac_address, fecha_fabricacion) 
values (2, 'Iphone13', null, '2022-09-08');

update phones set mac_address = '' where mac_address is null;

alter table phones alter column mac_address set not null;

insert into phones (id, modelo, mac_address, fecha_fabricacion) 
values (3, 'Iphone12', null, '2022-09-08');

create table paso(
	id serial primary key,
	nombre varchar(100)
	)

select * from paso

insert into paso ( nombre) values ('asdasdas')

delete from paso
truncate paso restart identity



alter table phones
	add column memoria_interna varchar(30),
	add column memoria_ram varchar(30),
	add column peso float,
	add column dimensiones json

update phones set memoria_interna = '', 
memoria_ram = '', peso = 0, dimensiones = '{}'

alter table phones 
	alter column memoria_interna set not null,
	alter column memoria_ram set not null,
	alter column peso set not null,
	alter column dimensiones set not null


truncate phones
select * from phones

alter table phones 
drop column id

alter table phones
   alter column id type int 

CREATE SEQUENCE secuencia_phones;

alter table phones 
	alter column id SET DEFAULT nextval('secuencia_phones'::regclass);

insert into phones (modelo, mac_address, fecha_fabricacion, memoria_interna,
memoria_ram, peso, dimensiones )
values ('NUEVITO', '00:07', '2021-10-10', '100gb', '6gb', 120, '{}')

---https://dba.stackexchange.com/questions/78732/change-existing-column-in-pg-to-auto-incremental-primary-key

	
	