CREATE TABLE peliculas (
id INTEGER,
nombre VARCHAR(255),
anno INTEGER,
PRIMARY KEY (id)
);

CREATE TABLE tags (
id INTEGER,
tag VARCHAR(32),
PRIMARY KEY (id)
);

CREATE TABLE pelicula_tag (
pelicula_id INT REFERENCES peliculas(id),
tag_id INT REFERENCES tags(id)
);



--Inserta 5 películas y 5 tags, la primera película
-- tiene que tener 3 tags asociados, la
--segunda película debe tener dos tags asociados (1 punto)


INSERT INTO peliculas (id, nombre, anno) VALUES (1, 'Batman Begins',
2005);
INSERT INTO peliculas (id, nombre, anno) VALUES (2, 'Ghost', 1990);
INSERT INTO peliculas (id, nombre, anno) VALUES (3, 'Titanic', 1997);
INSERT INTO peliculas (id, nombre, anno) VALUES (4, 'Shrek', 2001);
INSERT INTO peliculas (id, nombre, anno) VALUES (5, 'The Revenant',
2015);

select * from peliculas

INSERT INTO tags (id, tag) VALUES (1, 'Aventura');
INSERT INTO tags (id, tag) VALUES (2, 'Drama');
INSERT INTO tags (id, tag) VALUES (3, 'Fantasia');
INSERT INTO tags (id, tag) VALUES (4, 'Acción');
INSERT INTO tags (id, tag) VALUES (5, 'Romance');


INSERT INTO pelicula_tag (pelicula_id, tag_id) VALUES (1, 1);
INSERT INTO pelicula_tag (pelicula_id, tag_id) VALUES (1, 2);
INSERT INTO pelicula_tag (pelicula_id, tag_id) VALUES (1, 4);
INSERT INTO pelicula_tag (pelicula_id, tag_id) VALUES (2, 2);
INSERT INTO pelicula_tag (pelicula_id, tag_id) VALUES (2, 5);

--Cuenta la cantidad de tags que tiene cada película. 
--Si una película no tiene tags debe
--mostrar 0. (1 punto)
select peliculas.id, peliculas.nombre, count(pelicula_tag.tag_id)
from peliculas
left join pelicula_tag on peliculas.id = pelicula_tag.pelicula_id
group by pelicula_id, pelicula.nombre


SELECT peliculas.nombre, COUNT(pelicula_tag.tag_id)
FROM peliculas
LEFT JOIN pelicula_tag ON peliculas.id = pelicula_tag.pelicula_id
GROUP BY peliculas.nombre;


