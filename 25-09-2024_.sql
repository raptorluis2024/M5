create table cuentas (numero_cuenta int not null unique primary key, balance float
check(balance >= 0.00));
select * from cuentas
insert into cuentas (numero_cuenta, balance) values (1, 1000);
insert into cuentas (numero_cuenta, balance) values (2, 1000);

begin transaction;
	UPDATE cuentas set balance = balance - 1000 where numero_cuenta = 1;
	UPDATE cuentas set balance = balance + 1000 where numero_cuenta = 2;
rollback
commit



insert into cuentas (numero_cuenta, balance) values (3, 1000);

begin transaction;
UPDATE cuentas set balance = balance - 1000 where numero_cuenta = 3;
UPDATE cuentas set balance = balance + 1000 where numero_cuenta = 1;
commit;
