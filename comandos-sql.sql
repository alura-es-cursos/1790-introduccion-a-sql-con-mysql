# En esta aula te hablaremos sobre la historia de SQL y de My SQL.
# También instalaremos Workbench para poder utilizar un IDE en el desarrollo de nuestros ejercicios.

# Ya tu ambiente debe estar listo para trabajar. Te invito ver los videos y a ejecutar todos los 
# comandos que vas a aprender.

#Los comandos vistos en el aula anterior son los siguientes:

USE world;

SELECT * FROM city;

SELECT * FROM country;

SELECT * FROM countrylanguage;

CREATE DATABASE jugos;

DROP SCHEMA jugos;

SELECT * FROM CITY;

select * from country;

USE JUGOS;

CREATE TABLE TBCLIENTES(
DNI VARCHAR(20),
NOMBRE VARCHAR(150),
DIRECCION1 VARCHAR(150),
DIRECCION2 VARCHAR(150),
BARRIO VARCHAR(50),
CIUDAD VARCHAR(50),
ESTADO VARCHAR(50),
CP VARCHAR(10),
EDAD SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUMEN_COMPRA FLOAT,
PRIMERA_COMPRA BIT(1));

DROP TABLE TBCLIENTES3;

CREATE TABLE tbproductos
(PRODUCTO VARCHAR (20) ,
NOMBRE VARCHAR (150) ,
ENVASE VARCHAR (50) ,
VOLUMEN VARCHAR (50) ,
SABOR VARCHAR (50) ,
PRECIO FLOAT);

USE jugos;

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01);

SELECT * FROM tbproductos;

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('838819', 'clean', 'botella pet',
'1.5 litros', 'naranja', 12.01);
INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('1037797', 'clean', 'botella pet',
'2 litros', 'naranja', 16.01);
INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('8128292', 'clean', 'latat',
'350 ml', 'naranja', 2.81);

SELECT * FROM tbproductos;

USE jugos;

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('695594', 'Festival de Sabores', 'Botella PET',
'1.5 Litros', 'Asaí', 18.51);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('1041119', 'Línea Citrus', 'Botella de Vidrio',
'700 ml', 'Lima', 4.90);

SELECT * FROM tbproductos;

UPDATE tbproductos SET producto = '812829', envase = 'lata'
WHERE volumen = '350 ml';

UPDATE tbproductos SET precio = 28.51
WHERE producto = '695594';

UPDATE tbproductos SET sabor = 'Lima/Limón', precio = 4.90
WHERE producto = '1041119';

SELECT * FROM tbproductos;

DELETE FROM tbproductos WHERE producto = '773912';

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01);

SELECT * FROM tbproductos;

ALTER TABLE tbproductos ADD PRIMARY KEY(PRODUCTO);


USE jugos;

ALTER TABLE tbclientes ADD PRIMARY KEY (DNI);

ALTER TABLE tbclientes ADD COLUMN(FECHA_NACIMIENTO DATE);

INSERT INTO tbclientes(
DNI,
NOMBRE,
DIRECCION1, 
DIRECCION2, 
BARRIO,
CIUDAD,
ESTADO,
CP,
EDAD,
SEXO, 
LIMITE_CREDITO,
VOLUMEN_COMPRA, 
PRIMERA_COMPRA,
FECHA_NACIMIENTO) VALUES(
'456879548', 'Pedro el Escamoso', 'Calle del Sol, 25', '', 'Los Laureles', 'CDMX', 'México', '65784', 55, 'M',
1000000, 2000, 0, '1971-05-25');

SELECT * FROM tbclientes;

                   
