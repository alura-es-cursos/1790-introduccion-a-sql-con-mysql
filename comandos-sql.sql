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
