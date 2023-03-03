create database exercise;

use exercise;
show tables;

drop table if exists agenda;

create table agenda (
	nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);

show tables;

describe agenda;

drop table if exists agenda;

-- ----------------------------------------------------------------------------------
use exercise;
drop table if exists libros;

create table libros(
	titulo varchar(20),
    autor varchar(30),
    editorial varchar(15)
);

show tables;
describe libros;

-- registros
insert into libros(titulo, autor, editorial) values('100 años de soledad', 'GGM', 'ABC');

select * from libros;


-- exercise 3
drop table if exists empleado;
create table empleado(
	nombre varchar(15),
    documento varchar(8),
    sexo varchar(1),
    domicilio varchar(30),
    sueldobasico float
);

describe empleado;

insert into empleado(nombre, documento, sexo, domicilio, sueldobasico) values('Omar', '42534345', 'M', 'San Isidro', 5006.4);
insert into empleado(nombre, documento, sexo, domicilio, sueldobasico) values('Lucero', '45455433', 'F', 'La esperanza', 194.4);
insert into empleado(nombre, documento, sexo, domicilio, sueldobasico) values('Laura', '48762346', 'F', 'Porvenir', 77.8);

select * from empleado;
