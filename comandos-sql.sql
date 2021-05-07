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
                   
USE jugos;

DROP TABLE tbclientes;

DROP TABLE tbproductos;

CREATE TABLE tbcliente
(DNI VARCHAR (11) ,
NOMBRE VARCHAR (100) ,
DIRECCION1 VARCHAR (150) ,
DIRECCION2 VARCHAR (150) ,
BARRIO VARCHAR (50) ,
CIUDAD VARCHAR (50) ,
ESTADO VARCHAR (4) ,
CP VARCHAR (8) ,
FECHA_NACIMIENTO DATE,
EDAD SMALLINT,
SEXO VARCHAR (1) ,
LIMITE_CREDITO FLOAT ,
VOLUMEN_COMPRA FLOAT ,
PRIMERA_COMPRA BIT );

ALTER TABLE tbcliente ADD PRIMARY KEY (DNI);

CREATE TABLE tbproducto
(PRODUCTO VARCHAR (20) ,
NOMBRE VARCHAR (150) ,
ENVASE VARCHAR (50) ,
TAMANO VARCHAR (50) ,
SABOR VARCHAR (50) ,
PRECIO_LISTA FLOAT);

ALTER TABLE tbproducto ADD PRIMARY KEY (PRODUCTO);

INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', '', 'Barrio del Niño Jesús', 'Ciudad de México', 'CDMX', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', '', 'Carola', 'Ciudad de México', 'CDMX', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5576228758', 'Pedro Olivera', 'Pachuca 75', '', 'Condesa', 'Ciudad de México', 'CDMX', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', '', 'Contadero', 'Ciudad de México', 'CDMX', '82122020', '1995-01-07', 25, 'M', 110000, 190000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', '', 'Del Valle', 'Ciudad de México', 'CDMX', '80012212', '1990-01-01', 30, 'F', 170000, 245000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('3623344710', 'Marcos Rosas', 'Av. Universidad', '', 'Del Valle', 'Ciudad de México', 'CDMX', '22002012', '1995-01-13', 26, 'M', 110000, 220000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', '', 'Cuajimalpa', 'Ciudad de México', 'CDMX', '22000212', '1995-01-11', 25, 'M', 170000, 260000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', '', 'Del Valle', 'Ciudad de México', 'CDMX', '80010221', '1985-01-16', 36, 'M', 140000, 210000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('94387575700', 'Walter Soruco', 'Calz. de Tlalpan 2980', '', 'Ex Hacienda Coapa', 'Ciudad de México', 'CDMX', '22000201', '1989-01-20', 31, 'M', 60000, 120000, 1);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', '', 'Floresta Coyoacán', 'Ciudad de México', 'CDMX', '81192002', '1983-01-20', 37, 'M', 200000, 240000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', '', 'Héroes de Padierna', 'Ciudad de México', 'CDMX', '21002020', '1991-01-30', 29, 'M', 120000, 220000, 0);
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', '', 'Locaxco', 'Ciudad de México', 'CDMX', '22012002', '1994-01-19', 26, 'M', 75000, 95000, 1);

INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('773912', 'Clean', '1 Litro', 'Naranja', 'Botella PET', 8.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('838819', 'Clean', '1,5 Litros', 'Naranja', 'Botella PET', 12.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1037797', 'Clean', '2 Litros', 'Naranja', 'Botella PET', 16.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('812829', 'Clean', '350 ml', 'Naranja', 'Lata', 2.81);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('479745', 'Clean', '470 ml', 'Naranja', 'Botella de Vidrio', 3.77);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('695594', 'Festival de Sabores', '1,5 Litros', 'Asaí', 'Botella PET', 28.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('243083', 'Festival de Sabores', '1,5 Litros', 'Maracuyá', 'Botella PET', 10.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1022450', 'Festival de Sabores', '2 Litros', 'Asái', 'Botella PET', 38.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('231776', 'Festival de Sabores', '700 ml', 'Asaí', 'Botella de Vidrio', 13.31);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('723457', 'Festival de Sabores', '700 ml', 'Maracuyá', 'Botella de Vidrio', 4.91);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('746596', 'Light', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1040107', 'Light', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1002334', 'Línea Citrus', '1 Litro', 'Lima/Limón', 'Botella PET', 7);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1088126', 'Línea Citrus', '1 Litro', 'Limón', 'Botella PET', 7);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1041119', 'Línea Citrus', '700 ml', 'Lima/Limón', 'Botella de Vidrio', 4.9);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1042712', 'Línea Citrus', '700 ml', 'Limón', 'Botella de Vidrio', 4.9);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('520380', 'Pedazos de Frutas', '1 Litro', 'Manzana', 'Botella PET', 12.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('788975', 'Pedazos de Frutas', '1,5 Litros', 'Manzana', 'Botella PET', 18.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('229900', 'Pedazos de Frutas', '350 ml', 'Manzana', 'Lata', 4.21);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1101035', 'Refrescante', '1 Litro', 'Frutilla/Limón', 'Botella PET', 9.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1086543', 'Refrescante', '1 Litro', 'Mango', 'Botella PET', 11.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('326779', 'Refrescante', '1,5 Litros', 'Mango', 'Botella PET', 16.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('826490', 'Refrescante', '700 ml', 'Frutilla/Limón', 'Botella de Vidrio', 6.31);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1096818', 'Refrescante', '700 ml', 'Mango', 'Botella de Vidrio', 7.71);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('394479', 'Sabor da Montaña', '700 ml', 'Cereza', 'Botella de Vidrio', 8.41);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('783663', 'Sabor da Montaña', '700 ml', 'Frutilla', 'Botella de Vidrio', 7.71);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1000889', 'Sabor da Montaña', '700 ml', 'Uva', 'Botella de Vidrio', 6.31);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('544931', 'Verano', '350 ml', 'Limón', 'Lata', 2.46);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('235653', 'Verano', '350 ml', 'Mango', 'Lata', 3.86);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1051518', 'Verano', '470 ml', 'Limón', 'Botella de Vidrio', 3.3);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1078680', 'Verano', '470 ml', 'Mango', 'Botella de Vidrio', 5.18);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1004327', 'Vida del Campo', '1,5 Litros', 'Sandía', 'Botella PET', 19.51);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1013793', 'Vida del Campo', '2 Litros', 'Cereza/Manzana', 'Botella PET', 24.01);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('290478', 'Vida del Campo', '350 ml', 'Sandía', 'Lata', 4.56);
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('1002767', 'Vida del Campo', '700 ml', 'Cereza/Manzana', 'Botella de Vidrio', 8.41);

SELECT * FROM tbcliente;

SELECT DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO,CP, FECHA_NACIMIENTO, EDAD, 
SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA FROM tbcliente;

SELECT DNI, NOMBRE FROM tbcliente;

SELECT NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente;

SELECT NOMBRE AS Nombre_Completo, SEXO AS Género, EDAD AS Años, DIRECCION1 AS Domicilio FROM tbcliente;

SELECT NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente LIMIT 6;

SELECT * FROM tbproducto;

SELECT * FROM tbproducto WHERE SABOR = 'Maracuyá';

SELECT * FROM tbproducto WHERE ENVASE = 'Botella de Vidrio';

UPDATE tbproducto SET SABOR = 'Cítrico' WHERE SABOR = 'Limón';

SELECT * FROM tbproducto WHERE SABOR = 'Limón';

SELECT * FROM tbproducto WHERE SABOR = 'Cítrico';

SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE EDAD > 27;

SELECT * FROM tbcliente WHERE EDAD <= 27;

SELECT * FROM tbcliente WHERE EDAD <> 26;

SELECT * FROM tbcliente WHERE  NOMBRE > 'Erica Carvajo';

SELECT * FROM tbcliente WHERE  NOMBRE <= 'Erica Carvajo';

SELECT * FROM tbproducto;

SELECT * FROM tbproducto WHERE PRECIO_LISTA = 28.51;

SELECT * FROM tbproducto WHERE PRECIO_LISTA < 28.51;

SELECT * FROM tbproducto WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;

SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO = '1995-01-13';

SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO < '1995-01-13';

SELECT * FROM tbcliente WHERE FECHA_NACIMIENTO >= '1995-01-13';

SELECT * FROM tbcliente WHERE YEAR(FECHA_NACIMIENTO) = 1995;

SELECT * FROM tbcliente WHERE DAY(FECHA_NACIMIENTO) = 20;

SELECT * FROM tbproducto;

SELECT * FROM tbproducto WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;

SELECT * FROM tbproducto WHERE PRECIO_LISTA >= 28.49 AND  PRECIO_LISTA <=28.52;

SELECT * FROM tbproducto WHERE ENVASE = 'Lata' OR ENVASE = 'Botella PET';

SELECT * FROM tbproducto WHERE PRECIO_LISTA >= 15 AND  PRECIO_LISTA <=25;

SELECT * FROM tbproducto WHERE (PRECIO_LISTA >= 15 AND  PRECIO_LISTA <=25) OR (ENVASE = 'Lata' OR ENVASE = 'Botella PET');

SELECT * FROM tbproducto WHERE (PRECIO_LISTA >= 15 AND  TAMANO = '1 Litro') OR (ENVASE = 'Lata' OR ENVASE = 'Botella PET');


                   
