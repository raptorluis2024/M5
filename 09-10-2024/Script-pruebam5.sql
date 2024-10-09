create table pelicula(
	id integer primary key,
	nombre varchar(255) not null,
	anno int not null
	
);

create table tag(
	id int primary key,
	tag varchar(32) not null
);

create table pelicula_tag(
	id_pelicula int,
	id_tag int,
	primary key( id_pelicula, id_tag),
	foreign key(id_pelicula) references pelicula(id),
	foreign key(id_tag) references tag(id)
	
);


