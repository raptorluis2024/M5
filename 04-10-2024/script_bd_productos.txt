
CREATE TABLE Proveedor(
	id_proveedor int primary key,
	nombre_proveedor varchar(50) not null );
	
	
create table Categoria(
	id_categoria int primary key,
	nombre_categoria varchar(50) not null 
);

create table Formato(
	id_formato int primary key,
	nombre_formato varchar(50) not null
);


CREATE TABLE Producto (
	id_producto int primary key,
	nombre_producto varchar(50) not null,
	precio_unidad float not null,
	unidades_existencia int not null,
	unidades_en_pedido int not null,
	nivel_pedido int not null,
	suspendido boolean not null,
	id_proveedor int, 
	id_formato int,
	id_categoria int,
	foreign key (id_proveedor) references Proveedor(id_proveedor),
	foreign key (id_formato) references Formato(id_formato),
	foreign key (id_categoria) references Categoria(id_categoria)
	
);


	



