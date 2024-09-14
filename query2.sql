--select * from productos where LENGTH(nombre_producto) < 20 
--order by LENGTH(nombre_producto); 

select *,LENGTH(nombre_producto) as largo, precio*1.1 as pact,
left(nombre_producto,3) as cod
from productos where LENGTH(nombre_producto) < 20 
order by largo desc;

select sum(precio) as suma from productos
where en_stock and LENGTH(nombre_producto) < 20 


select count(*), count(precio) from productos


select * from productos 

SELECT max(precio),categoria from productos GROUP BY categoria


SELECT categoria, nombre_producto, min(precio)
from productos GROUP BY categoria,nombre_producto