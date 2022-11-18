-- -----------------------------------------------------
-- Population
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Estado Civil
-- -----------------------------------------------------

INSERT INTO crud_dao_iud.estado_civil (nombre, descripcion) VALUES ('Soltero', 'Sin Compromiso');
INSERT INTO crud_dao_iud.estado_civil (nombre, descripcion) VALUES ('Casado', 'Union marital de hecho');
INSERT INTO crud_dao_iud.estado_civil (nombre, descripcion) VALUES ('Union Libre', 'Convivencia sin compromiso');
INSERT INTO crud_dao_iud.estado_civil( nombre, descripcion) VALUES ('Otro', 'Estado civil no definido');

-- -----------------------------------------------------
-- Tipo de Identficacion
-- -----------------------------------------------------
INSERT INTO crud_dao_iud.tipo_identificacion (nombre, descripcion) VALUES ('CC', 'Cedula de ciudadania');
INSERT INTO crud_dao_iud.tipo_identificacion (nombre, descripcion) VALUES ('Ce', 'Cedula de extranjeria');
INSERT INTO crud_dao_iud.tipo_identificacion (nombre, descripcion) VALUES ('TI', 'Tarjeta de identidad');
INSERT INTO crud_dao_iud.tipo_identificacion (nombre, descripcion) VALUES ('Otro', 'Otro tipo de identificacion');

-- -----------------------------------------------------
-- Rol
-- -----------------------------------------------------

INSERT INTO crud_dao_iud.rol (nombre, descripcion) VALUES ('Hermano/a', 'Hermano/a del funcionario');
INSERT INTO crud_dao_iud.rol (nombre, descripcion) VALUES ('Esposo/a', 'Esposo/a del funcionario');
INSERT INTO crud_dao_iud.rol (nombre, descripcion) VALUES ('Padre', 'Padre del funcionario');
INSERT INTO crud_dao_iud.rol (nombre, descripcion) VALUES ('Madre', 'Madre del funcionario');
INSERT INTO crud_dao_iud.rol (nombre, descripcion) VALUES ('Hijo/a', 'Hijo/a del funcionario');

-- -----------------------------------------------------
-- Semestre Academico
-- -----------------------------------------------------

INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 1', 'Nivel 1');
INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 2', 'Nivel 2');
INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 3', 'Nivel 3');
INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 4', 'Nivel 4');
INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 5', 'Nivel 5');
INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 6', 'Nivel 6');
INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 7', 'Nivel 7');
INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 8', 'Nivel 8');
INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 9', 'Nivel 9');
INSERT INTO crud_dao_iud.nivel_estudio (nombre, descripcion) VALUES ('Semestre 10', 'Nivel 10');

-- -----------------------------------------------------
-- Estado Nivel Academico
-- -----------------------------------------------------

INSERT INTO crud_dao_iud.estado (nombre, descripcion) VALUES ('Estudiante', 'Actualmente esta estudiando');
INSERT INTO crud_dao_iud.estado (nombre, descripcion) VALUES ('Graduado', 'Finalizo sus estudios');
INSERT INTO crud_dao_iud.estado (nombre, descripcion) VALUES ('Reingreso', 'Estudiante en estado de reingreso');
INSERT INTO crud_dao_iud.estado (nombre, descripcion) VALUES ('Retirado', 'Estudiante expulsado de la institucion');
INSERT INTO crud_dao_iud.estado (nombre, descripcion) VALUES ('Otro', 'Otro estado');

-- -----------------------------------------------------
-- Universidad
-- -----------------------------------------------------

INSERT INTO crud_dao_iud.universidad (nombre, descripcion, fecha_creacion, fecha_actualizacion)
VALUES ('Universidad de Antioquia', 'Universidad Publica de alta calidad', '2020-02-01 13:20:01', '2021-01-03 08:15:00');
INSERT INTO crud_dao_iud.universidad (nombre, descripcion, fecha_creacion, fecha_actualizacion)
VALUES ('Universidad de Medellin', 'Universidad privada', '2020-01-15 09:30:25', '2022-09-01 07:30:20');
INSERT INTO crud_dao_iud.universidad (nombre, descripcion, fecha_creacion, fecha_actualizacion)
VALUES ('ITM Institucion Universitaria', 'Universidad publica acreditada', '2021-06-01 08:30:00', '2021-11-10 08:00:45');

-- -----------------------------------------------------
-- Funcionarios
-- -----------------------------------------------------

INSERT INTO crud_dao_iud.funcionarios (numero_identificacion, nombres, apellidos, sexo, direccion, telefono, fecha_nacimiento, fecha_creacion, fecha_actualizacion, tipo_identificacion_id, estado_civil_id)
VALUES ('98545778', 'Alvaro', 'valencia', 'M', 'Cra. 89# 30b - 26 apt 301', '322-527-90-15', '1989-05-02', '2017-01-15 08:30:25', '2022-11-29 15:30:22', 1, 2);

INSERT INTO crud_dao_iud.funcionarios (numero_identificacion, nombres, apellidos, sexo, direccion, telefono, fecha_nacimiento, fecha_creacion, fecha_actualizacion, tipo_identificacion_id, estado_civil_id)
VALUES ('1152678885', 'Manuela', 'Restrepo', 'F', 'Av. Nutibara', '310-848-05-18', '1997-01-19', '2022-01-10 17:50:32', '2022-09-03 13:30:52', 1, 1);

INSERT INTO crud_dao_iud.funcionarios (numero_identificacion, nombres, apellidos, sexo, direccion, telefono, fecha_nacimiento, fecha_creacion, fecha_actualizacion, tipo_identificacion_id, estado_civil_id)
VALUES ('1152456963', 'Ferney', 'Rios', 'M', 'Cll. 33 # 30-26', '312-808-28-48', '1995-10-10', '2021-01-15 12:45:25', '2022-06-13 01:34:26', 1, 3);

INSERT INTO crud_dao_iud.funcionarios (numero_identificacion, nombres, apellidos, sexo, direccion, telefono, fecha_nacimiento, fecha_creacion, fecha_actualizacion, tipo_identificacion_id, estado_civil_id)
VALUES ('87556', 'Fanny', 'Agudelo', 'F', 'Av. Siempre Viva', '301-332-97-56', '1993-06-25', '2022-11-10 13:23:10', '2022-11-11 11:20:14', 3, 2);

INSERT INTO crud_dao_iud.funcionarios (numero_identificacion, nombres, apellidos, sexo, direccion, telefono, fecha_nacimiento, fecha_creacion, fecha_actualizacion, tipo_identificacion_id, estado_civil_id)
VALUES ('1152456185', 'Juan Felipe', 'Valencia', 'M', 'Cra89 # 89-12', '312-452-12-95', '1995-11-10', '2022-02-28 07:50:41', '2022-10-25 08:10:50', 1, 1);

-- -----------------------------------------------------
-- Grupo Familiar
-- -----------------------------------------------------

INSERT INTO crud_dao_iud.grupo_familiar (nombres, apellidos, direccion, fecha_creacion, fecha_actualizacion, rol_id, funcionarios_id)
VALUES ('Gloria', 'Renteria', 'Belen Altavista','2022-04-22 13:50:15', '2022-09-15 :07:56',4,5);
INSERT INTO crud_dao_iud.grupo_familiar (nombres, apellidos, direccion, fecha_creacion, fecha_actualizacion, rol_id, funcionarios_id)
VALUES ('Manuela', 'Hernadez', 'Av. Guayabal','2022-05-04 10:40:13', '2022-09-06 16:25:18',2,5);
INSERT INTO crud_dao_iud.grupo_familiar (nombres, apellidos, direccion, fecha_creacion, fecha_actualizacion, rol_id, funcionarios_id)
VALUES ('Claudia', 'Agudelo', 'AV. 1 de mayo','2022-11-25 09:30:28', '2022-11-29 07:05:25',1,4);


-- -----------------------------------------------------
-- Formacion Academica
-- -----------------------------------------------------

INSERT INTO crud_dao_iud.formacion_academica (fecha_inicio, fecha_final, fecha_creacion, fecha_actualizacion, universidad_id, estado_id, nivel_estudio_id, funcionarios_id)
VALUES ('2017-01-20 08:38:15', '2021-11-24 09:15:16', '2017-01-15 16:30:07', '2021-11-10 07:50:12',1,1,4,1);
INSERT INTO crud_dao_iud.formacion_academica (fecha_inicio, fecha_final, fecha_creacion, fecha_actualizacion, universidad_id, estado_id, nivel_estudio_id, funcionarios_id)
VALUES ('2019-08-10 16:30:18', '2022-08-10 10:15:39', '2019-08-01 09:30:02', '2022-08-01 15:50:12',2,1,5,3);