-- Session 2
-- Clave Primaria
use administracion;

drop table if exists usuario;

create table usuario(
	nombre varchar(20),
    clave varchar(10),
    primary key (nombre)
);

describe usuario;

insert into usuario(nombre, clave) values('Omar', '123456');
insert into usuario(nombre, clave) values('Ramo', 'BVDS');
insert into usuario(nombre, clave) values('Roma', 'jsdajn');
insert into usuario(nombre, clave) values('Amor', 'vfrr');

select * from usuario;

-- exercise
drop table if exists clientes;

create table clientes(
	documento varchar(8),
    apellido varchar(20),
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11),
    primary key (documento)
);

insert into clientes (documento,apellido,nombre,domicilio, telefono)
values('22345678','Perez','Marcos','Colon 123','4545454');

insert into clientes (documento,apellido,nombre,domicilio, telefono)    
values('23222222','Garcia','Ana','Avellaneda 1345','4252652');

insert into clientes (documento,apellido,nombre,domicilio, telefono)   
values('20454545','Lopez','Susana','Urquiza 344','4522525');

insert into clientes (documento,apellido,nombre,domicilio, telefono)   
values('35454545','Lopez','Susana','Urquiza 344','4522525');

select * from clientes;

-- Campo Entero con autoincremento
drop table if exists libros;
create table libros(
	codigo int auto_increment,
    titulo varchar(50),
    autor varchar(50),
    editorial varchar(25),
    primary key (codigo)
);

insert into libros(titulo,autor,editorial) values('La momia', 'Borgers', 'Pinguino');
insert into libros(titulo,autor,editorial) values('Juggernaut', 'Telek', 'Laracost');
insert into libros(titulo,autor,editorial) values('BOOH', 'Sunstrom', 'VIdalIF');

select * from libros;

describe libros


-- TRUNCATE TABLE --  truncate te quita la secuencia de codigo
-- Vacia todo los registros
delete from libros;	 
