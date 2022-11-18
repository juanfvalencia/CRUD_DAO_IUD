/* Author:  JUAN FELIPE VALENCIA RENTERIA*/
 /* Created: 12/11/2022 */

CREATE DATABASE IF NOT EXISTS crud_dao_iud; /*  crea la BBDD  */

USE crud_dao_iud; /* selecciona la BBDD */

/*
Creación de tablas
*/

/*--------------------------------------------------*/
        /*  Tabla tipo_identificacion  */
/*--------------------------------------------------*/

CREATE TABLE tipo_identificacion(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(100) NULL,
    PRIMARY KEY(id)
);

/*--------------------------------------------------*/
             /*  Tabla estado_civil  */
/*--------------------------------------------------*/

CREATE TABLE estado_civil(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(100)NULL,
    PRIMARY KEY(id)
);

/*--------------------------------------------------*/
                 /*  Tabla rol  */
/*--------------------------------------------------*/

CREATE TABLE rol(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(100) NULL,
    PRIMARY KEY(id)
);

/*--------------------------------------------------*/
             /*  Tabla universidad  */
/*--------------------------------------------------*/

CREATE TABLE universidad(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(100) NULL,
	fecha_creacion DATETIME,
	fecha_actualizacion DATETIME,
    PRIMARY KEY(id)
);

/*--------------------------------------------------*/
                /*  Tabla estado  */
/*--------------------------------------------------*/

CREATE TABLE estado(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(100)NULL,
    PRIMARY KEY(id)
);

/*--------------------------------------------------*/
         /*  Tabla nivel_estudio  */
/*--------------------------------------------------*/

CREATE TABLE nivel_estudio(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    descripcion VARCHAR(100) NULL,
    PRIMARY KEY(id)
);

/*--------------------------------------------------*/
           /*  Tabla funcionarios  */
/*--------------------------------------------------*/

CREATE TABLE funcionarios(
    id INT NOT NULL AUTO_INCREMENT,
    numero_identificacion VARCHAR(120) NOT NULL,
    nombres VARCHAR(120) NOT NULL,
    apellidos VARCHAR(120) NOT NULL,
    sexo CHAR(2),
    direccion VARCHAR(255),
    telefono VARCHAR(255),
    fecha_nacimiento DATE,
    fecha_creacion DATETIME,
    fecha_actualizacion DATETIME,
    tipo_identificacion_id INT NOT NULL,
    estado_civil_id INT NOT NULL,
    PRIMARY KEY(id),
    UNIQUE(numero_identificacion),
    FOREIGN KEY(tipo_identificacion_id) REFERENCES tipo_identificacion(id),
    FOREIGN KEY(estado_civil_id) REFERENCES estado_civil(id) 
);

/*--------------------------------------------------*/
           /* Tabla grupo_familiar */
/*--------------------------------------------------*/

CREATE TABLE grupo_familiar(
    id INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(120) NOT NULL,
    apellidos VARCHAR(120) NOT NULL,
    direccion VARCHAR(255),
    fecha_creacion DATETIME,
    fecha_actualizacion DATETIME,
    rol_id INT NOT NULL,
    funcionarios_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(rol_id) REFERENCES rol(id),
    FOREIGN KEY(funcionarios_id) REFERENCES funcionarios(id) 
);

/*--------------------------------------------------*/
           /* Tabla formacion_academica */
/*--------------------------------------------------*/

CREATE TABLE formacion_academica(
    id INT NOT NULL AUTO_INCREMENT,
    fecha_inicio DATETIME,
    fecha_final DATETIME,
    fecha_creacion DATETIME,
    fecha_actualizacion DATETIME,
    universidad_id INT NOT NULL,
    estado_id INT NOT NULL,
    nivel_estudio_id INT NOT NULL,
    funcionarios_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(universidad_id) REFERENCES universidad(id),
    FOREIGN KEY(estado_id) REFERENCES estado(id),
    FOREIGN KEY(nivel_estudio_id) REFERENCES nivel_estudio(id),
    FOREIGN KEY(funcionarios_id) REFERENCES funcionarios(id)	
);