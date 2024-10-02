CREATE TABLE autores (
	id INT NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);
select * from autores
CREATE TABLE libros (
	id INT NOT NULL,
	titulo VARCHAR(255) NOT NULL,
	autor_id INT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (autor_id) REFERENCES autores (id)
);
select * from libros
delete from autores


INSERT INTO autores (id, nombre)
VALUES
(1, 'Juan Pérez'),
(2, 'María García'),
(3, 'Pedro Rodríguez');

INSERT INTO libros (id, titulo, autor_id)
VALUES
(1, 'El Quijote', 1),
(2, 'La Divina Comedia', 1),
(3, 'Hamlet', 1);

select a.*, l.* 
from autores a 
inner join libros l
on a.id = l.autor_id

delete from libros where autor_id = 1
delete from libros

drop table autores;
