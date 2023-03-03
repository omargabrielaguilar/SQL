-- Mostrar toda las base de datos
show databases;

-- Creación de la base de datos
create database administracion;

-- Eliminar base de Datos
drop database administracion;

-- ---------------------- TABLAS ---------------------- -- 
-- Cada tabla va contener su campo(columna) y se les va a poder hacer registro
use administracion;

show tables;

-- definimos su nombre y su tipo de dato
create table usuarios(
	nombre varchar(30),  
    clave varchar(10)
)
;

describe usuarios;  -- ver estructura de una tabla

drop table usuarios; -- eliminar tabla

drop table if exists usuarios; -- para evitar mensajes

-- ---------- Registros ------------------------
-- Cada registro tiene un dato por cada columna

insert into usuarios (nombre, clave) values ('Mario Perez', 'Marito');

select nombre, clave from usuarios;

drop table if exists agenda;
create table agenda(
	nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);

show tables;
describe agenda;

insert into agenda(nombre, domicilio, telefono) values ('Omar', 'Mz E1', '24323');

select nombre, domicilio, telefono from agenda;

-- ---------------------------- TIPO DE DATOS --------------------------------------
show tables;

create table libros(
	titulo varchar(40),
    autor varchar(20),
    editorial varchar(15),
    precio float,
    cantidad integer 
);

insert into libros(titulo,autor,editorial,precio,cantidad) values('abc','efc','asdad',55.4,3);
insert into libros(titulo,autor,editorial,precio,cantidad) values('safdas','ccc','sdfd',33.6,6);
insert into libros(titulo,autor,editorial,precio,cantidad) values('dsgfd','vvv','asdad',12.5,8);

select * from libros;


-- ------------------------ Recuperación de DATOS ---------------------------------------------------------------
use administracion;

select titulo, autor from libros;
select editorial, cantidad from libros;

select * from libros;

-- exercise
drop table if exists pelicula;

create table pelicula(
	titulo varchar(20),
    actor varchar(20),
    duracion integer,
    cantidad integer
);

describe pelicula;

insert into pelicula(titulo, actor, duracion, cantidad) values ('Fast& Furius', 'VIn diesel', 180, 4);
insert into pelicula(titulo, actor, duracion, cantidad) values ('Home Alone', 'Makula', 200, 6);
insert into pelicula(titulo, actor, duracion, cantidad) values ('WHiplash', 'Teller miller', 150, 71);

select titulo,actor from pelicula;
select titulo,duracion from pelicula;
select titulo,cantidad from pelicula;

-- ---------------------- REGISTRO WHEREEE ------------------------------------
show tables;

select * from usuarios;

insert into usuarios(nombre,clave) values('Omar', '123456');
insert into usuarios(nombre,clave) values('Jose', 'Boca');
insert into usuarios(nombre,clave) values('Vilma', 'vilma123');

select * from usuarios where nombre = 'Omar';


-- exercises
drop table if exists articulos;

create table articulos(
	codigo integer,
    nombre varchar(20),
    descripcion varchar(30),
    precio float
);

insert into articulos(codigo, nombre, descripcion, precio) values (1,'Lavadora', 'Para lavar' , 123.55);
insert into articulos(codigo, nombre, descripcion, precio) values (2,'Remoledora', 'Para remoler' , 534.55);
insert into articulos(codigo, nombre, descripcion, precio) values (3,'Licuadora', 'Para licuar' , 55.43);
insert into articulos(codigo, nombre, descripcion, precio) values (4,'Taladrora', 'Para talar' , 123.55);
insert into articulos(codigo, nombre, descripcion, precio) values (5,'Saca Corcho', 'Para la bebida' , 774.55);

select * from articulos where nombre = 'Licuadora';
select nombre, descripcion, precio from articulos where nombre = 'Lavadora';

use administracion;

-- Operadores Relacionales
select * from articulos where nombre <> 'Lavadora';  -- excluyendo
select * from articulos where precio > 200;
select * from articulos where precio <= 534.55;

-- Borrar registro de una tabla
-- Una vez eliminado un registro se eliminara y no se recuperara
-- Debe especificarse un where

set SQL_SAFE_UPDATES= 0;

delete from articulos where nombre = 'Licuadora';
select * from articulos;

set SQL_SAFE_UPDATES = 1;

select @@sql_safe_updates;

-- Modificar un registro
update articulos set descripcion ="Remolerleler" 
where nombre = "Remoledora";

