CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente
VARCHAR);

INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES 
( 44, '01/01/2021', 'Blog' ),
( 56, '01/01/2021', 'Página' ),
( 39, '01/02/2021', 'Blog' ),
( 81, '01/02/2021', 'Página' ),
( 12, '01/03/2021', 'Blog' ),
( 91, '01/03/2021', 'Página' ),
( 48, '01/04/2021', 'Blog' ),
( 45, '01/04/2021', 'Página' ),
( 55, '01/05/2021', 'Blog' ),
( 33, '01/05/2021', 'Página' ),
( 18, '01/06/2021', 'Blog' ),
( 12, '01/06/2021', 'Página' ),
( 34, '01/07/2021', 'Blog' ),
( 24, '01/07/2021', 'Página' ),
( 83, '01/08/2021', 'Blog' ),
( 99, '01/08/2021', 'Página' );

delete from inscritos


select * from inscritos

--- cuantos hay

select count(*) as filas from inscritos

--¿Cuántos inscritos hay en total?
select sum(cantidad) as total_inscritos from inscritos
select sum(cantidad) as total_inscritos from inscritos where fuente = 'Blog'
select sum(cantidad) as total_inscritos from inscritos where fuente = 'Página'

---¿Cuál o cuáles son los registros de mayor antigüedad?
select * from inscritos
where fecha = (select min(fecha) from inscritos )
and fuente = 'Página'
---¿Cuántos inscritos hay por día? 
--- (entendiendo un día como una fecha distinta de ahora en adelante)
SELECT fecha, SUM (cantidad) AS inscritos_por_dia
FROM inscritos
GROUP BY fecha
ORDER BY fecha;


--¿Qué día se inscribió la mayor cantidad de personas y cuántas personas se
--inscribieron ese día?

select fecha, sum(cantidad) as ese_dia from inscritos
where fecha = (select max(fecha ) from inscritos)
group by fecha


SELECT fecha, SUM (cantidad) AS inscritos_por_dia
FROM inscritos
GROUP BY fecha
ORDER BY inscritos_por_dia DESC
LIMIT 1;

