select * from ventas

select avg(cantidad) from ventas group by producto

select avg(cantidad) 
from ventas 
where fecha > '2024-01-05'
group by producto


select  producto, max(cantidad*precio_unitario) as venta
from ventas
group by producto
