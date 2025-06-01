DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE BIBLIOTECA(
Id_Biblioteca integer PRIMARY KEY auto_increment,
Direccion varchar (50),
Nombre varchar (50)
);

CREATE TABLE LIBRO(
Id_libro integer PRIMARY KEY auto_increment,
Titulo varchar(50),
Id_autor integer,
editorial varchar(50),
fecha_publi datetime,
cantidad integer,
cant_dispon integer,
Id_categoria integer);

CREATE TABLE AUTOR(
Id_autor integer PRIMARY KEY auto_increment,
Nombre varchar(50),
Apellido varchar(50),
Nacionalidad varchar(50));

CREATE TABLE USUARIOS(
Id_usuario integer PRIMARY KEY auto_increment,
Nombre varchar(50),
Apellido varchar(50),
Correo varchar(50),
Telefono integer,
fecha_registro datetime,
tipo_usu varchar(50),
estado varchar(50));

CREATE TABLE MULTAS(
Id_multas integer PRIMARY KEY auto_increment,
Id_usuario integer,
monto integer,
motivo varchar(50),
estado varchar(50),
fecha_registr datetime);

CREATE TABLE TIPO_USU(
Id_Tip_Usu integer PRIMARY KEY auto_increment,
Nom_Tip_Usu varchar(50));

CREATE TABLE CATEGORIAS(
Id_Categoria integer PRIMARY KEY auto_increment,
Nom_Categ varchar(50));

CREATE TABLE PRESTAMOS(
Id_prestamo integer PRIMARY KEY auto_increment,
Id_Usuario integer,
Id_libro integer,
FECHA_Prest DATETIME,
Fech_Devol DATETIME,
Observacion varchar(50),
Cant_libro integer
);

ALTER TABLE LIBRO
ADD CONSTRAINT FK_ID_AUTOR 
FOREIGN KEY (ID_AUTOR) REFERENCES AUTOR (Id_autor);

ALTER TABLE LIBRO
ADD CONSTRAINT FK_ID_CATEGORIA 
FOREIGN KEY (ID_CATEGORIA) REFERENCES CATEGORIAS (Id_categoria);

ALTER TABLE PRESTAMOS
ADD CONSTRAINT FK_ID_USUARIO
FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS (Id_usuario);

ALTER TABLE PRESTAMOS
ADD CONSTRAINT FK_ID_LIB 
FOREIGN KEY (ID_LIBRO) REFERENCES LIBRO (Id_libro);

ALTER TABLE MULTAS 
ADD CONSTRAINT FK_ID_USUARIOS 
FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS (Id_usuario);


 















