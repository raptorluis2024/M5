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


















create table pregunta(
	id int primary key,
	pregunta varchar(255) not null,
	respuesta_correcta varchar
);

create table usuario(
	id int primary key,
	nombre varchar(255) not null,
	edad int
);	

create table respuesta(
	id_respuesta int primary key,
	respuesta varchar(255) not null,
	id_usuario int not null,
	id_pregunta int not null,
	foreign key(id_usuario) references usuario(id),
	foreign key(id_pregunta) references pregunta(id)
);


