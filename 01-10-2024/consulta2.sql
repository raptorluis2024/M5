CREATE TABLE productos (
  id serial PRIMARY KEY,
  nombre varchar(255) NOT NULL,
  precio numeric(10,2) NOT NULL,
  sku text
);

INSERT INTO productos (nombre, precio, sku)
VALUES
  ('Televisor 50 pulgadas', 1500.00, NULL),
  ('Celular de alta gama', 1000.00, NULL),
  ('Laptop de última generación', 2000.00, NULL),
  ('Nevera con congelador', 500.00, NULL),
  ('Lavadora automática', 300.00, NULL),
  ('Cocina a gas', 400.00, NULL),
  ('Horno microondas', 250.00, NULL),
  ('Juego de ollas', 100.00, NULL),
  ('Set de cubiertos', 50.00, NULL),
  ('Cafetera eléctrica', 75.00, NULL),
  ('Tostadora', 50.00, NULL),
  ('Plancha de vapor', 100.00, NULL),
  ('Secadora de ropa', 200.00, NULL),
  ('Aspiradora', 150.00, NULL),
  ('Robot aspirador', 300.00, NULL),
  ('Silla de oficina', 200.00, NULL),
  ('Mesa de escritorio', 150.00, NULL),
  ('Escritorio para computadora', 250.00, NULL),
  ('Sillón para sala', 300.00, NULL),
  ('Sofá cama', 400.00, NULL),
  ('Mesa de centro', 200.00, NULL),
  ('Silla para comedor', 150.00, NULL),
  ('Mesa para comedor', 250.00, NULL),
  ('Cama matrimonial', 400.00, NULL),
  ('Cabecera para cama', 250.00, NULL),
  ('Mesa de noche', 150.00, NULL),
  ('Armario ropero', 300.00, NULL),
  ('Espejo para baño', 200.00, NULL),
  ('Inodoro', 150.00, NULL),
  ('Lavabo', 250.00, NULL),
  ('Grifería para baño', 100.00, NULL),
  ('Ducha', 75.00, NULL),
  ('Bañera', 50.00, NULL),
  ('Cocina de inducción', 400.00, NULL),
  ('Campana extractora', 300.00, NULL),
  ('Microondas', 250.00, NULL),
  ('Lavavajillas', 1000.00, NULL),
  ('Lavadora secadora', 2000.00, NULL);

  select * from productos
--UPDATE clientes2 SET fecha = COALESCE(fecha, '2024-01-01');
update productos set sku = COALESCE(sku,'dato no ingresado')

  update productos set sku = 'dato no ingresado' where sku is null

  alter table productos
  	alter column sku set not null;


INSERT INTO productos (nombre, precio, sku)
VALUEs ('Lavadora secadora', 2000.00, NULL);