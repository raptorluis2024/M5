
CREATE TABLE peliculas(
id INT,
titulo VARCHAR(60),
año INT,
director VARCHAR(30),
primary key (id)
);
CREATE table reparto(
id_pelicula int,
nombre VARCHAR(30),
FOREIGN KEY (id_pelicula) REFERENCES peliculas(id)
);

SELECT id, "Pelicula", "Año estreno", "Director"
FROM public.peliculas;

alter table peliculas 
add primary key (id);

alter table reparto 
add constraint fk_actor_pelicula
foreign key(id_pelicula) references peliculas(id)
---- script para crear las tablas

--------  como importar datos desde csv
--- borrar los datos 
delete from reparto 
delete from peliculas 

select * from reparto

copy peliculas FROM 'c:\\peliculas.csv' csv header;
copy reparto FROM 'c:\\reparto.csv' csv header;


---3. Obtener el ID de la película “Titanic”

select id from peliculas p where p."Pelicula" = 'Titanic'


--4. Listar a todos los actores que aparecen 
--en la película "Titanic
select r.actor, p."Pelicula" 
from reparto r 
inner join peliculas p 
on r.id_pelicula = p.id
where p.id = 2

select * from reparto where id_pelicula=2;

--5. Consultar en cuántas películas del top 100 
--participa Harrison Ford.

select count(*) cuantas 
from reparto r
where r.actor = 'Harrison Ford'

select r.actor, count(*) cuantas 
from reparto r
group by r.actor
order by cuantas desc
limit 5
where r.actor = 'Harrison Ford'

--Indicar las películas estrenadas entre los años 
--1990 y 1999 ordenadas por título de manera ascendente.

select * from peliculas p where "Año estreno"  >= 1990 
and "Año estreno" <= 1999 
order by p."Pelicula" asc

select * from peliculas p where "Año estreno"  between 1990 
and  1999 
order by p."Pelicula" asc

--7. Hacer una consulta SQL que muestre los títulos
-- con su longitud, la longitud debe ser nombrado 
--para la consulta como “longitud_titulo”.

select p."Pelicula", length(p."Pelicula") as longitud_titulo
from peliculas p

--8. Consultar cual es la longitud más grande entre todos los títulos
-- de las películas.
select max(length(p."Pelicula")) 
from peliculas p 

