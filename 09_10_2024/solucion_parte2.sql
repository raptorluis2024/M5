CREATE TABLE preguntas (
id INTEGER,
pregunta VARCHAR(255),
respuesta_correcta VARCHAR,
PRIMARY KEY (id)
);

CREATE TABLE usuarios(
id INTEGER,
nombre VARCHAR(255),
edad INTEGER,
PRIMARY KEY (id)
);

CREATE TABLE respuestas (
id INTEGER,
respuesta VARCHAR(255),
usuario_id INT REFERENCES usuarios (id),
pregunta_id INT REFERENCES preguntas (id),
PRIMARY KEY (id)
);












--Agrega datos, 5 usuarios y 5 preguntas, la primera pregunta 
--debe estar contestada dos veces correctamente por distintos 
--usuarios, la pregunta 2 debe estar contestada
--correctamente sólo por un usuario, y las otras 2 respuestas 
--deben estar incorrectas.

--a. Contestada correctamente significa que la respuesta 
--indicada en la tabla
--respuestas es exactamente igual al texto indicado en la tabla
-- de preguntas.


INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (1,
'Cuantas patas tiene un gato?', 'Tiene 4 patas');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (2,
'Como hacen los perros?', 'Guau');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (3, 'De
que color es el pasto?', 'Verde');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (4,
'Cual es la capital de Chile?', 'Santiago');
INSERT INTO preguntas (id, pregunta, respuesta_correcta) VALUES (5, 'De
que pais son The Beatles?', 'Inglaterra');


INSERT INTO usuarios (id, nombre, edad) VALUES (1, 'Juan Perez', '25');
INSERT INTO usuarios (id, nombre, edad) VALUES (2, 'Maria Joaquina',
'30');
INSERT INTO usuarios (id, nombre, edad) VALUES (3, 'Pedro Diaz', '60');
INSERT INTO usuarios (id, nombre, edad) VALUES (4, 'Camila Gonzalez',
'35');
INSERT INTO usuarios (id, nombre, edad) VALUES (5, 'Rocio Sanchez',
'15');


INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES
(1, 'Tiene 4 patas', 1,1);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES
(2, 'Tiene 4 patas', 2, 1);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES
(3, 'Guau', 3, 2);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) VALUES
(4, 'Azul', 4,3);
INSERT INTO respuestas (id, respuesta, usuario_id, pregunta_id) values
(5, 'Lota', 5, 4);


--Cuenta la cantidad de respuestas correctas totales por 
--usuario (independiente de la pregunta). 

SELECT usuarios.nombre, COUNT(respuestas.respuesta) FILTER(WHERE
respuestas.respuesta = preguntas.respuesta_correcta) 
FROM usuarios 
left JOIN respuestas ON respuestas.usuario_id = usuarios.id
LEFT join preguntas ON respuestas.pregunta_id = preguntas.id 
GROUP by usuarios.nombre;

--- solo con where-----------------------------------------
SELECT usuarios.nombre, COUNT(respuestas.respuesta) 
FROM usuarios 
left JOIN respuestas ON respuestas.usuario_id = usuarios.id
LEFT join preguntas ON respuestas.pregunta_id = preguntas.id 
where respuestas.respuesta = preguntas.respuesta_correcta
GROUP by usuarios.nombre;
--------------------------------------------



--Por cada pregunta en la tabla preguntas, 
--cuenta cuántos usuarios tuvieron la respuesta correcta.

SELECT preguntas.pregunta, COUNT(usuarios.id) FILTER(WHERE
respuestas.respuesta = preguntas.respuesta_correcta) 
FROM preguntas LEFT
JOIN respuestas ON respuestas.pregunta_id = preguntas.id 
LEFT join usuarios ON usuarios.id = respuestas.usuario_id 
GROUP by preguntas.pregunta;

--Implementa borrado en cascada de las respuestas al borrar
-- un usuario y borrar el primer usuario para probar
-- la implementación. 

ALTER TABLE respuestas 
DROP CONSTRAINT respuestas_usuario_id_fkey, 
add FOREIGN KEY (usuario_id) 
REFERENCES usuarios(id) ON DELETE CASCADE;

DELETE FROM usuarios WHERE id = 1;

--Crea una restricción que impida insertar usuarios
-- menores de 18 años en la base de datos. 

ALTER TABLE usuarios ADD CONSTRAINT edad CHECK (edad > 18);

--Altera la tabla existente de usuarios agregando
--el campo email con la restricción de único.

ALTER TABLE usuarios ADD COLUMN email VARCHAR;
ALTER TABLE usuarios ADD UNIQUE (email);

