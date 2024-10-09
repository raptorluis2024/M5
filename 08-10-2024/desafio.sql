create table diagnostico(
	codigo_diagnostico int primary key,
	nombre_diagnostico varchar(100) not null
);

create table paciente(
	rut_paciente varchar(10) primary key,
	nombre_paciente varchar(50) not null,
	direccion_paciente varchar(100)
);

create table especialidad(
	id_especialidad int primary key,
	nombre_especialidad varchar(100)
	
);

create table medico (
	rut_medico varchar(10) primary key,
	nombre_medico varchar(50) not null,
	id_especialidad int,
	foreign key(id_especialidad) 
	references especialidad(id_especialidad)
);

create table consulta (
	fecha_atencion date,
	hora_atencion time,
	box int,
	primary key (fecha_atencion, hora_atencion, box),
	rut_paciente varchar(10),
	rut_medico varchar(10),
	codigo_diagnostico int,
	foreign key(rut_paciente)
	references paciente(rut_paciente),
	foreign key(rut_medico)
	references medico(rut_medico),
	foreign key(codigo_diagnostico)
	references diagnostico(codigo_diagnostico)

);

create table licencia(
    codigo int primary key,
    fecha_inicio date not null,
    fecha_termino date not null,
    fecha_atencion date not null,
	hora_atencion time not null,
	box int not null,
	foreign key(fecha_atencion, hora_atencion,
	box) references consulta(fecha_atencion,
	hora_atencion, box)
	
);

