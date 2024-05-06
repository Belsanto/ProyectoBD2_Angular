--------------------------------------------------------
-- Archivo creado por BELSANTO - lunes-mayo-06-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CONTENIDO_DE_UNIDAD
--------------------------------------------------------

  CREATE TABLE "CONTENIDO_DE_UNIDAD" 
   (	"ID_CONTENIDO" NUMBER, 
	"ID_UNIDAD" NUMBER, 
	"DESCRIPCIÓN" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CURSO
--------------------------------------------------------

  CREATE TABLE "CURSO" 
   (	"ID_CURSO" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ESTUDIANTE
--------------------------------------------------------

  CREATE TABLE "ESTUDIANTE" 
   (	"ID_ESTUDIANTE" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"CONTRASEÑA" VARCHAR2(100 BYTE) DEFAULT '12345'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLES_ESTUDIANTE" ;
--------------------------------------------------------
--  DDL for Table ESTUDIANTE_GRUPO
--------------------------------------------------------

  CREATE TABLE "ESTUDIANTE_GRUPO" 
   (	"ID_ESTUDIANTE" NUMBER, 
	"ID_GRUPO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXAMEN
--------------------------------------------------------

  CREATE TABLE "EXAMEN" 
   (	"ID_EXAMEN" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"DESCRIPCIÓN" VARCHAR2(500 BYTE), 
	"CANTIDAD_DE_PREGUNTAS" NUMBER, 
	"TIEMPO_LÍMITE" NUMBER, 
	"ID_CURSO" NUMBER, 
	"ID_PROFESOR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLES_EXAMEN" ;
--------------------------------------------------------
--  DDL for Table EXAMEN_HORARIO
--------------------------------------------------------

  CREATE TABLE "EXAMEN_HORARIO" 
   (	"ID_EXAMEN" NUMBER, 
	"ID_HORARIO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXAMEN_PREGUNTA
--------------------------------------------------------

  CREATE TABLE "EXAMEN_PREGUNTA" 
   (	"ID_EXAMEN" NUMBER, 
	"ID_PREGUNTA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GRUPO
--------------------------------------------------------

  CREATE TABLE "GRUPO" 
   (	"ID_GRUPO" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GRUPO_HORARIO
--------------------------------------------------------

  CREATE TABLE "GRUPO_HORARIO" 
   (	"ID_GRUPO" NUMBER, 
	"ID_HORARIO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HORARIO
--------------------------------------------------------

  CREATE TABLE "HORARIO" 
   (	"ID_HORARIO" NUMBER, 
	"DIA" VARCHAR2(15 BYTE), 
	"HORA" VARCHAR2(15 BYTE), 
	"SEMANA" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PREGUNTA
--------------------------------------------------------

  CREATE TABLE "PREGUNTA" 
   (	"ID_PREGUNTA" NUMBER, 
	"TEXTO" VARCHAR2(500 BYTE), 
	"OPCIONES" VARCHAR2(500 BYTE), 
	"RESPUESTAS_CORRECTAS" VARCHAR2(500 BYTE), 
	"ID_TIPO" NUMBER, 
	"TEMA" VARCHAR2(250 BYTE) DEFAULT 'No definido', 
	"PRIVACIDAD" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLES_PREGUNTA" ;

   COMMENT ON COLUMN "PREGUNTA"."ID_TIPO" IS '1 completa, 2 verdadero falso, 3 unica respuesta, 4 multiple respuesta,5 unir';
   COMMENT ON COLUMN "PREGUNTA"."PRIVACIDAD" IS '0 publico, 1 privado
';
--------------------------------------------------------
--  DDL for Table PRESENTACION_EXAMEN
--------------------------------------------------------

  CREATE TABLE "PRESENTACION_EXAMEN" 
   (	"ID_PRESENTACION_EXAMEN" NUMBER, 
	"ID_ESTUDIANTE" NUMBER, 
	"ID_EXAMEN" NUMBER, 
	"FECHA_PRESENTACION" DATE, 
	"PUNTAJE" NUMBER, 
	"TIEMPO_TOMADO" INTERVAL DAY (2) TO SECOND (6), 
	"DIRECCION_IP" VARCHAR2(45 BYTE), 
	"RESPUESTAS" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLES_RESPUESTA" ;

   COMMENT ON COLUMN "PRESENTACION_EXAMEN"."RESPUESTAS" IS 'CAMPO PARA PONER LAS PREGUNTAS QUE RESPONDIÓ BIEN';
--------------------------------------------------------
--  DDL for Table PROFESOR
--------------------------------------------------------

  CREATE TABLE "PROFESOR" 
   (	"ID_PROFESOR" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"CONTRASEÑA" VARCHAR2(100 BYTE) DEFAULT '12345'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TABLES_PROFESOR" ;
--------------------------------------------------------
--  DDL for Table UNIDAD_DE_CURSO
--------------------------------------------------------

  CREATE TABLE "UNIDAD_DE_CURSO" 
   (	"ID_UNIDAD" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"ID_CURSO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into CONTENIDO_DE_UNIDAD
SET DEFINE OFF;
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('1','1','Ecuaciones de primer grado');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('2','2','Derivadas');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('3','3','Imperio Romano');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('4','4','Causas de la Revolución Francesa');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('5','5','Cadenas tróficas');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('6','6','Herencia genética');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('7','7','Hidrocarburos');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('8','8','Tabla Periódica');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('9','9','Ley de Newton');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('10','10','Ley de Coulomb');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('11','11','Oferta y Demanda');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('12','12','Ciclos Económicos');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('13','13','Conducta Humana');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('14','14','El Estado y sus Funciones');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('15','15','Principios Constitucionales');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('16','16','Notación Musical');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('17','17','Estructura Social');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('18','18','Métodos de Etnografía');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('19','19','Historia del Arte Antiguo');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('20','20','Principios del Periodismo');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('21','21','Estructura del Cuerpo Humano');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('22','22','Dibujo Técnico Básico');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('23','23','Circuitos Electrónicos');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('24','24','Sistema Digestivo');
Insert into CONTENIDO_DE_UNIDAD (ID_CONTENIDO,ID_UNIDAD,"DESCRIPCIÓN") values ('25','25','Cuidado Dental Infantil');
REM INSERTING into CURSO
SET DEFINE OFF;
Insert into CURSO (ID_CURSO,NOMBRE) values ('1','Matemáticas');
Insert into CURSO (ID_CURSO,NOMBRE) values ('2','Historia');
Insert into CURSO (ID_CURSO,NOMBRE) values ('3','Biología');
Insert into CURSO (ID_CURSO,NOMBRE) values ('4','Química');
Insert into CURSO (ID_CURSO,NOMBRE) values ('5','Física');
Insert into CURSO (ID_CURSO,NOMBRE) values ('6','Literatura');
Insert into CURSO (ID_CURSO,NOMBRE) values ('7','Geografía');
Insert into CURSO (ID_CURSO,NOMBRE) values ('8','Filosofía');
Insert into CURSO (ID_CURSO,NOMBRE) values ('9','Arte');
Insert into CURSO (ID_CURSO,NOMBRE) values ('10','Informática');
Insert into CURSO (ID_CURSO,NOMBRE) values ('11','Economía');
Insert into CURSO (ID_CURSO,NOMBRE) values ('12','Psicología');
Insert into CURSO (ID_CURSO,NOMBRE) values ('13','Ciencias Políticas');
Insert into CURSO (ID_CURSO,NOMBRE) values ('14','Derecho');
Insert into CURSO (ID_CURSO,NOMBRE) values ('15','Música');
Insert into CURSO (ID_CURSO,NOMBRE) values ('16','Sociología');
Insert into CURSO (ID_CURSO,NOMBRE) values ('17','Antropología');
Insert into CURSO (ID_CURSO,NOMBRE) values ('18','Artes Plásticas');
Insert into CURSO (ID_CURSO,NOMBRE) values ('19','Comunicación Social');
Insert into CURSO (ID_CURSO,NOMBRE) values ('20','Educación Física');
Insert into CURSO (ID_CURSO,NOMBRE) values ('21','Arquitectura');
Insert into CURSO (ID_CURSO,NOMBRE) values ('22','Ingeniería');
Insert into CURSO (ID_CURSO,NOMBRE) values ('23','Medicina');
Insert into CURSO (ID_CURSO,NOMBRE) values ('24','Odontología');
Insert into CURSO (ID_CURSO,NOMBRE) values ('25','Enfermería');
REM INSERTING into ESTUDIANTE
SET DEFINE OFF;
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('1','Esteban Sánchez','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('2','Valentina Suárez','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('3','Leonardo Ramos','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('4','Catalina Ortiz','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('5','Marcelo Castro','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('6','Verónica Gómez','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('7','Carlos Reyes','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('8','Gabriela Vega','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('9','Santiago Fernández','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('10','María Zamora','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('11','Camila Paredes','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('12','Joaquín Mendoza','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('13','Felipe Luna','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('14','Carolina Robles','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('15','Alejandro Montalvo','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('16','Sofía Valenzuela','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('17','Jorge Navarro','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('18','Lucía Campos','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('19','Sebastián Herrera','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('20','Melisa Andrade','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('21','Julieta Flores','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('22','René Ayala','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('23','Pablo Zapata','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('24','Daniela Castillo','12345');
Insert into ESTUDIANTE (ID_ESTUDIANTE,NOMBRE,"CONTRASEÑA") values ('25','Estela Rojas','12345');
REM INSERTING into ESTUDIANTE_GRUPO
SET DEFINE OFF;
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('1','1');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('2','2');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('3','3');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('4','4');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('5','5');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('6','6');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('7','7');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('8','8');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('9','9');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('10','10');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('11','11');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('12','12');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('13','13');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('14','14');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('15','15');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('16','16');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('17','17');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('18','18');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('19','19');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('20','20');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('21','21');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('22','22');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('23','23');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('24','24');
Insert into ESTUDIANTE_GRUPO (ID_ESTUDIANTE,ID_GRUPO) values ('25','25');
REM INSERTING into EXAMEN
SET DEFINE OFF;
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('1','Examen de Álgebra','Prueba sobre álgebra','5','60','1','1');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('2','Examen de Cálculo','Prueba sobre cálculo','5','60','1','2');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('3','Examen de Historia Antigua','Prueba sobre historia antigua','5','60','2','3');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('4','Examen de Revolución Francesa','Prueba sobre la Revolución Francesa','5','60','2','4');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('5','Examen de Ecosistemas','Prueba sobre ecosistemas','5','60','3','5');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('6','Examen de Genética','Prueba sobre genética','5','60','3','6');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('7','Examen de Química Orgánica','Prueba sobre química orgánica','5','60','4','7');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('8','Examen de Química Inorgánica','Prueba sobre química inorgánica','5','60','4','8');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('9','Examen de Mecánica','Prueba sobre mecánica','5','60','5','9');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('10','Examen de Electromagnetismo','Prueba sobre electromagnetismo','5','60','5','10');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('11','Examen de Literatura','Prueba sobre literatura','5','60','6','1');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('12','Examen de Geografía','Prueba sobre geografía','5','60','7','2');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('13','Examen de Filosofía','Prueba sobre filosofía','5','60','8','3');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('14','Examen de Arte','Prueba sobre arte','5','60','9','4');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('15','Examen de Informática','Prueba sobre informática','5','60','10','5');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('16','Examen de Economía','Prueba sobre economía','5','60','11','6');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('17','Examen de Psicología','Prueba sobre psicología','5','60','12','7');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('18','Examen de Ciencias Políticas','Prueba sobre ciencias políticas','5','60','13','8');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('19','Examen de Derecho','Prueba sobre derecho','5','60','14','9');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('20','Examen de Música','Prueba sobre música','5','60','15','10');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('21','Examen de Sociología','Prueba sobre sociología','5','60','16','1');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('22','Examen de Antropología','Prueba sobre antropología','5','60','17','2');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('23','Examen de Artes Plásticas','Prueba sobre artes plásticas','5','60','18','3');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('24','Examen de Comunicación Social','Prueba sobre comunicación social','5','60','19','4');
Insert into EXAMEN (ID_EXAMEN,NOMBRE,"DESCRIPCIÓN",CANTIDAD_DE_PREGUNTAS,"TIEMPO_LÍMITE",ID_CURSO,ID_PROFESOR) values ('25','Examen de Educación Física','Prueba sobre educación física','5','60','20','5');
REM INSERTING into EXAMEN_HORARIO
SET DEFINE OFF;
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('1','1');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('2','2');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('3','3');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('4','4');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('5','5');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('6','6');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('7','7');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('8','8');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('9','9');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('10','10');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('11','11');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('12','12');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('13','13');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('14','14');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('15','15');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('16','16');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('17','17');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('18','18');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('19','19');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('20','20');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('21','21');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('22','22');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('23','23');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('24','24');
Insert into EXAMEN_HORARIO (ID_EXAMEN,ID_HORARIO) values ('25','25');
REM INSERTING into EXAMEN_PREGUNTA
SET DEFINE OFF;
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('1','1');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('1','2');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('1','15');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('1','20');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('2','2');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('3','3');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('4','4');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('5','5');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('6','6');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('7','7');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('8','8');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('9','9');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('10','10');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('11','11');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('11','16');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('11','21');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('12','12');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('12','17');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('12','22');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('13','13');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('13','18');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('13','23');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('14','14');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('14','19');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('14','24');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('15','15');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('15','20');
Insert into EXAMEN_PREGUNTA (ID_EXAMEN,ID_PREGUNTA) values ('15','25');
REM INSERTING into GRUPO
SET DEFINE OFF;
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('1','Grupo A');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('2','Grupo B');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('3','Grupo C');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('4','Grupo D');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('5','Grupo E');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('6','Grupo F');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('7','Grupo G');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('8','Grupo H');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('9','Grupo I');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('10','Grupo J');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('11','Grupo K');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('12','Grupo L');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('13','Grupo M');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('14','Grupo N');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('15','Grupo O');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('16','Grupo P');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('17','Grupo Q');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('18','Grupo R');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('19','Grupo S');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('20','Grupo T');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('21','Grupo U');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('22','Grupo V');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('23','Grupo W');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('24','Grupo X');
Insert into GRUPO (ID_GRUPO,NOMBRE) values ('25','Grupo Y');
REM INSERTING into GRUPO_HORARIO
SET DEFINE OFF;
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('1','1');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('2','2');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('3','3');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('4','4');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('5','5');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('6','6');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('7','7');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('8','8');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('9','9');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('10','10');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('11','11');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('12','12');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('13','13');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('14','14');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('15','15');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('16','16');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('17','17');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('18','18');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('19','19');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('20','20');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('21','21');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('22','22');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('23','23');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('24','24');
Insert into GRUPO_HORARIO (ID_GRUPO,ID_HORARIO) values ('25','25');
REM INSERTING into HORARIO
SET DEFINE OFF;
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('1','Lunes','08:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('2','Martes','08:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('3','Miércoles','08:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('4','Jueves','08:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('5','Viernes','08:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('6','Lunes','10:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('7','Martes','10:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('8','Miércoles','10:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('9','Jueves','10:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('10','Viernes','10:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('11','Lunes','12:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('12','Martes','12:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('13','Miércoles','12:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('14','Jueves','12:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('15','Viernes','12:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('16','Lunes','14:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('17','Martes','14:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('18','Miércoles','14:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('19','Jueves','14:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('20','Viernes','14:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('21','Lunes','16:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('22','Martes','16:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('23','Miércoles','16:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('24','Jueves','16:00','1');
Insert into HORARIO (ID_HORARIO,DIA,HORA,SEMANA) values ('25','Viernes','16:00','1');
REM INSERTING into PREGUNTA
SET DEFINE OFF;
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('1','¿Cuál es el resultado de 2 + 2?','3,4,5','4','1','Historia','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('2','¿Cuál es el límite de x cuando x tiende a infinito en la función f(x) = 1/x?','0,1,2','0','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('3','¿Quién fue el primer emperador de Roma?','Julio César,Augusto,Nerón','Augusto','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('4','¿Qué año comenzó la Revolución Francesa?','1789,1799,1776','1789','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('5','¿Cuál es el nivel trófico más alto en una cadena alimentaria?','Productores,Consumidores Primarios,Consumidores Secundarios','Consumidores Secundarios','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('6','¿Qué es la genética?','Estudio de los genes,Estudio del cuerpo humano,Estudio del espacio','Estudio de los genes','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('7','¿Cuál es el compuesto más común en los hidrocarburos?','Metano,Propano,Butano','Metano','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('8','¿Cuál es el elemento químico con el símbolo O?','Oxígeno,Oro,Osmio','Oxígeno','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('9','¿Qué dice la primera ley de Newton?','Inercia,Gravitación,Relatividad','Inercia','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('10','¿Qué es el electromagnetismo?','Estudio de las partículas subatómicas,Estudio de la electricidad y magnetismo,Estudio de los átomos','Estudio de la electricidad y magnetismo','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('11','¿Cuál es la capital de España?','Barcelona,Madrid,Valencia','Madrid','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('12','¿Qué es una estructura de datos?','Organización de datos,Protocolo de comunicación,Lenguaje de programación','Organización de datos','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('13','¿Qué es la inteligencia artificial?','Uso de máquinas inteligentes,Redes neuronales,Ambas','Ambas','3','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('14','¿Cuál es el lenguaje de consulta más utilizado en bases de datos?','SQL,Python,Java','SQL','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('15','¿Cuál es el sistema operativo más utilizado en computadoras personales?','MacOS,Linux,Windows','Windows','1','No definido','0');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('16','¿Qué es una dirección IP?','Identificador único en la red,Una computadora personal,Protocolo de red','Identificador único en la red','1','No definido','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('17','¿Cuál es la base de la lógica matemática?','Los conjuntos,La probabilidad,Los números','Los conjuntos','1','No definido','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('18','¿Qué es la relatividad especial?','Estudio de la velocidad de la luz,Estudio de las estrellas,Estudio de la gravedad','Estudio de la velocidad de la luz','1','No definido','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('19','¿Qué es la ética?','Estudio de la moral,Estudio de la mente,Estudio de la justicia','Estudio de la moral','1','No definido','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('20','¿Qué es el PIB?','Producto Interno Bruto,Producto Interno Bonificado,Producto Intermedio Bruto','Producto Interno Bruto','1','No definido','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('21','¿Cuál es la especialidad de la psicología?','Estudio del comportamiento humano,Estudio de las leyes,Estudio de las matemáticas','Estudio del comportamiento humano','1','No definido','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('22','¿Qué es la biología?','Estudio de los seres vivos,Estudio de las plantas,Estudio del cuerpo humano','Estudio de los seres vivos','1','No definido','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('23','¿Qué es la química orgánica?','Estudio de los compuestos del carbono,Estudio de los átomos,Estudio de las moléculas','Estudio de los compuestos del carbono','1','No definido','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('24','¿Qué es el derecho?','Estudio de las leyes,Estudio de la moral,Estudio de las emociones','Estudio de las leyes','1','No definido','1');
Insert into PREGUNTA (ID_PREGUNTA,TEXTO,OPCIONES,RESPUESTAS_CORRECTAS,ID_TIPO,TEMA,PRIVACIDAD) values ('25','¿Qué es la ciencia política?','Estudio del gobierno,Estudio de la psicología,Estudio de la economía','Estudio del gobierno','1','No definido','1');
REM INSERTING into PRESENTACION_EXAMEN
SET DEFINE OFF;
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('1','1','1',to_date('18/04/24','DD/MM/RR'),'80','+00 00:30:00.000000','192.168.1.1','1,2,3,4,5');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('2','2','2',to_date('18/04/24','DD/MM/RR'),'90','+00 00:25:00.000000','192.168.1.2','6,7,8,9,10');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('3','3','3',to_date('18/04/24','DD/MM/RR'),'85','+00 00:20:00.000000','192.168.1.3','1,2,3,4,5');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('4','4','4',to_date('18/04/24','DD/MM/RR'),'75','+00 00:35:00.000000','192.168.1.4','6,7,8,9,10');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('5','5','5',to_date('18/04/24','DD/MM/RR'),'95','+00 00:30:00.000000','192.168.1.5','1,2,3,4,5');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('6','6','6',to_date('18/04/24','DD/MM/RR'),'80','+00 00:25:00.000000','192.168.1.6','6,7,8,9,10');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('7','7','7',to_date('18/04/24','DD/MM/RR'),'85','+00 00:20:00.000000','192.168.1.7','1,2,3,4,5');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('8','8','8',to_date('18/04/24','DD/MM/RR'),'75','+00 00:35:00.000000','192.168.1.8','6,7,8,9,10');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('9','9','9',to_date('18/04/24','DD/MM/RR'),'95','+00 00:30:00.000000','192.168.1.9','1,2,3,4,5');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('10','10','10',to_date('18/04/24','DD/MM/RR'),'90','+00 00:25:00.000000','192.168.1.10','6,7,8,9,10');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('11','11','11',to_date('18/04/24','DD/MM/RR'),'90','+00 00:30:00.000000','192.168.1.11','11,12,13,14,15');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('12','12','12',to_date('18/04/24','DD/MM/RR'),'85','+00 00:25:00.000000','192.168.1.12','16,17,18,19,20');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('13','13','13',to_date('18/04/24','DD/MM/RR'),'80','+00 00:20:00.000000','192.168.1.13','11,12,13,14,15');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('14','14','14',to_date('18/04/24','DD/MM/RR'),'95','+00 00:35:00.000000','192.168.1.14','16,17,18,19,20');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('15','15','15',to_date('18/04/24','DD/MM/RR'),'85','+00 00:30:00.000000','192.168.1.15','11,12,13,14,15');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('16','16','16',to_date('18/04/24','DD/MM/RR'),'75','+00 00:25:00.000000','192.168.1.16','16,17,18,19,20');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('17','17','17',to_date('18/04/24','DD/MM/RR'),'90','+00 00:20:00.000000','192.168.1.17','11,12,13,14,15');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('18','18','18',to_date('18/04/24','DD/MM/RR'),'85','+00 00:35:00.000000','192.168.1.18','16,17,18,19,20');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('19','19','19',to_date('18/04/24','DD/MM/RR'),'75','+00 00:30:00.000000','192.168.1.19','11,12,13,14,15');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('20','20','20',to_date('18/04/24','DD/MM/RR'),'90','+00 00:25:00.000000','192.168.1.20','16,17,18,19,20');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('21','21','21',to_date('18/04/24','DD/MM/RR'),'90','+00 00:30:00.000000','192.168.1.21','11,12,13,14,15');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('22','22','22',to_date('18/04/24','DD/MM/RR'),'85','+00 00:25:00.000000','192.168.1.22','16,17,18,19,20');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('23','23','23',to_date('18/04/24','DD/MM/RR'),'90','+00 00:20:00.000000','192.168.1.23','11,12,13,14,15');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('24','24','24',to_date('18/04/24','DD/MM/RR'),'85','+00 00:35:00.000000','192.168.1.24','16,17,18,19,20');
Insert into PRESENTACION_EXAMEN (ID_PRESENTACION_EXAMEN,ID_ESTUDIANTE,ID_EXAMEN,FECHA_PRESENTACION,PUNTAJE,TIEMPO_TOMADO,DIRECCION_IP,RESPUESTAS) values ('25','25','25',to_date('18/04/24','DD/MM/RR'),'75','+00 00:30:00.000000','192.168.1.25','11,12,13,14,15');
REM INSERTING into PROFESOR
SET DEFINE OFF;
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('1','Juan Pérez','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('2','María Rodríguez','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('3','Pedro García','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('4','Sofía Jiménez','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('5','Luis Hernández','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('6','Ana Torres','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('7','Carlos Martínez','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('8','Daniela López','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('9','Javier Díaz','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('10','Isabel Rivas','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('11','Roberto Álvarez','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('12','Lucía Domínguez','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('13','Fernando Ramírez','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('14','Elena Navarro','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('15','Francisco Mendoza','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('16','Claudia Salas','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('17','David Montoya','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('18','Sonia Pérez','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('19','Adriana Serrano','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('20','Ricardo González','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('21','Lorena Castro','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('22','Héctor Pineda','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('23','Mónica Morales','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('24','Diego Valencia','12345');
Insert into PROFESOR (ID_PROFESOR,NOMBRE,"CONTRASEÑA") values ('25','Paola Martínez','12345');
REM INSERTING into UNIDAD_DE_CURSO
SET DEFINE OFF;
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('1','Álgebra','1');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('2','Cálculo','1');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('3','Antigua Roma','2');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('4','Revolución Francesa','2');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('5','Ecosistemas','3');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('6','Genética','3');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('7','Química Orgánica','4');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('8','Química Inorgánica','4');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('9','Mecánica','5');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('10','Electromagnetismo','5');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('11','Microeconomía','11');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('12','Macroeconomía','11');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('13','Conducta Humana','12');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('14','Teoría del Estado','13');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('15','Derecho Constitucional','14');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('16','Teoría Musical','15');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('17','Estructura Social','16');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('18','Etnografía','17');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('19','Historia del Arte','18');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('20','Periodismo','19');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('21','Anatomía','20');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('22','Dibujo Técnico','21');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('23','Electrónica','22');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('24','Fisiología','23');
Insert into UNIDAD_DE_CURSO (ID_UNIDAD,NOMBRE,ID_CURSO) values ('25','Odontopediatría','24');
--------------------------------------------------------
--  DDL for Index EXAMEN_PREGUNTA_PK
--------------------------------------------------------

  CREATE INDEX "EXAMEN_PREGUNTA_PK" ON "EXAMEN_PREGUNTA" ("ID_EXAMEN", "ID_PREGUNTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008458
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008458" ON "PROFESOR" ("ID_PROFESOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  ALTER INDEX "SYS_C008458"  UNUSABLE;
--------------------------------------------------------
--  DDL for Index SYS_C008460
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008460" ON "ESTUDIANTE" ("ID_ESTUDIANTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  ALTER INDEX "SYS_C008460"  UNUSABLE;
--------------------------------------------------------
--  DDL for Index SYS_C008462
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008462" ON "CURSO" ("ID_CURSO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008464
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008464" ON "UNIDAD_DE_CURSO" ("ID_UNIDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008466
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008466" ON "CONTENIDO_DE_UNIDAD" ("ID_CONTENIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008474
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008474" ON "PREGUNTA" ("ID_PREGUNTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008479
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008479" ON "EXAMEN" ("ID_EXAMEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008484
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008484" ON "HORARIO" ("ID_HORARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008486
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008486" ON "GRUPO" ("ID_GRUPO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008490
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008490" ON "GRUPO_HORARIO" ("ID_GRUPO", "ID_HORARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008493
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008493" ON "ESTUDIANTE_GRUPO" ("ID_ESTUDIANTE", "ID_GRUPO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008496
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008496" ON "EXAMEN_HORARIO" ("ID_EXAMEN", "ID_HORARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008504
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008504" ON "PRESENTACION_EXAMEN" ("ID_PRESENTACION_EXAMEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  ALTER INDEX "SYS_C008504"  UNUSABLE;
--------------------------------------------------------
--  DDL for Index SYS_C008466
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008466" ON "CONTENIDO_DE_UNIDAD" ("ID_CONTENIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008462
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008462" ON "CURSO" ("ID_CURSO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008460
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008460" ON "ESTUDIANTE" ("ID_ESTUDIANTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  ALTER INDEX "SYS_C008460"  UNUSABLE;
--------------------------------------------------------
--  DDL for Index SYS_C008493
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008493" ON "ESTUDIANTE_GRUPO" ("ID_ESTUDIANTE", "ID_GRUPO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008479
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008479" ON "EXAMEN" ("ID_EXAMEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008496
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008496" ON "EXAMEN_HORARIO" ("ID_EXAMEN", "ID_HORARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index EXAMEN_PREGUNTA_PK
--------------------------------------------------------

  CREATE INDEX "EXAMEN_PREGUNTA_PK" ON "EXAMEN_PREGUNTA" ("ID_EXAMEN", "ID_PREGUNTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008486
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008486" ON "GRUPO" ("ID_GRUPO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008490
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008490" ON "GRUPO_HORARIO" ("ID_GRUPO", "ID_HORARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008484
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008484" ON "HORARIO" ("ID_HORARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008474
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008474" ON "PREGUNTA" ("ID_PREGUNTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008504
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008504" ON "PRESENTACION_EXAMEN" ("ID_PRESENTACION_EXAMEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  ALTER INDEX "SYS_C008504"  UNUSABLE;
--------------------------------------------------------
--  DDL for Index SYS_C008458
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008458" ON "PROFESOR" ("ID_PROFESOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  ALTER INDEX "SYS_C008458"  UNUSABLE;
--------------------------------------------------------
--  DDL for Index SYS_C008464
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008464" ON "UNIDAD_DE_CURSO" ("ID_UNIDAD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Function ACTUALIZAR_EXAMEN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "ACTUALIZAR_EXAMEN" (
    p_id_examen IN NUMBER,
    p_nombre IN VARCHAR2,
    p_descripcion IN VARCHAR2,
    p_cantidad_preguntas IN NUMBER,
    p_tiempo_limite IN NUMBER,
    p_id_curso IN NUMBER,
    p_id_profesor IN NUMBER
) RETURN NUMBER
IS
BEGIN
    UPDATE "EXAMEN"
    SET
        "NOMBRE" = p_nombre,
        "DESCRIPCIÓN" = p_descripcion,
        "CANTIDAD_DE_PREGUNTAS" = p_cantidad_preguntas,
        "TIEMPO_LÍMITE" = p_tiempo_limite,
        "ID_CURSO" = p_id_curso,
        "ID_PROFESOR" = p_id_profesor
    WHERE
        "ID_EXAMEN" = p_id_examen;

    RETURN SQL%ROWCOUNT; -- Devuelve el número de filas afectadas por la actualización
END;

/
--------------------------------------------------------
--  DDL for Function ACTUALIZAR_PREGUNTA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "ACTUALIZAR_PREGUNTA" (
    p_id_pregunta IN NUMBER,
    p_texto IN VARCHAR2,
    p_opciones IN VARCHAR2,
    p_respuestas_correctas IN VARCHAR2,
    p_id_tipo IN NUMBER,
    p_tema IN VARCHAR2 DEFAULT 'No definido',
    p_privacidad IN NUMBER DEFAULT 0
) RETURN NUMBER
IS
BEGIN
    UPDATE "PREGUNTA"
    SET
        "TEXTO" = p_texto,
        "OPCIONES" = p_opciones,
        "RESPUESTAS_CORRECTAS" = p_respuestas_correctas,
        "ID_TIPO" = p_id_tipo,
        "TEMA" = p_tema,
        "PRIVACIDAD" = p_privacidad
    WHERE
        "ID_PREGUNTA" = p_id_pregunta;

    RETURN SQL%ROWCOUNT; -- Devuelve el número de filas afectadas por la actualización
END;

/
--------------------------------------------------------
--  DDL for Function ACTUALIZAR_PRIVACIDAD_PREGUNTA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "ACTUALIZAR_PRIVACIDAD_PREGUNTA" (
    p_id_pregunta IN NUMBER,
    p_id_profesor IN NUMBER,
    p_privacidad IN NUMBER
) RETURN NUMBER
IS
    v_privacidad_actual NUMBER;
    v_id_profesor_examen NUMBER;
BEGIN
    -- Obtener la privacidad actual de la pregunta
    SELECT PRIVACIDAD
    INTO v_privacidad_actual
    FROM "PREGUNTA"
    WHERE "ID_PREGUNTA" = p_id_pregunta;

    IF v_privacidad_actual = p_privacidad THEN
        -- La privacidad actual es igual a la nueva privacidad, no es necesario actualizar
        RETURN 1;
    ELSIF v_privacidad_actual = 0 AND p_privacidad = 1 THEN
        -- Intento de cambiar de pública a privada, verificar si la pregunta está siendo usada por otro profesor en un examen
        SELECT COUNT(*)
        INTO v_id_profesor_examen
        FROM "EXAMEN" EX
        INNER JOIN "EXAMEN_PREGUNTA" EP ON EX."ID_EXAMEN" = EP."ID_EXAMEN"
        WHERE EP."ID_PREGUNTA" = p_id_pregunta AND EX."ID_PROFESOR" <> p_id_profesor;

        IF v_id_profesor_examen > 0 THEN
            -- La pregunta está siendo usada por otro profesor en un examen, no se puede cambiar la privacidad
            RETURN 0;
        END IF;
    END IF;

    -- Actualizar la privacidad de la pregunta
    UPDATE "PREGUNTA"
    SET "PRIVACIDAD" = p_privacidad
    WHERE "ID_PREGUNTA" = p_id_pregunta;

    RETURN 1; -- Indicar que la privacidad fue actualizada correctamente
END;

/
--------------------------------------------------------
--  DDL for Function AGREGAR_EXAMEN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "AGREGAR_EXAMEN" (
    p_nombre IN VARCHAR2,
    p_descripcion IN VARCHAR2,
    p_cantidad_preguntas IN NUMBER,
    p_tiempo_limite IN NUMBER,
    p_id_curso IN NUMBER,
    p_id_profesor IN NUMBER
) RETURN NUMBER
IS
    v_id_examen NUMBER;
BEGIN
    INSERT INTO "EXAMEN" (
        "NOMBRE",
        "DESCRIPCIÓN",
        "CANTIDAD_DE_PREGUNTAS",
        "TIEMPO_LÍMITE",
        "ID_CURSO",
        "ID_PROFESOR"
    ) VALUES (
        p_nombre,
        p_descripcion,
        p_cantidad_preguntas,
        p_tiempo_limite,
        p_id_curso,
        p_id_profesor
    )
    RETURNING "ID_EXAMEN" INTO v_id_examen;

    RETURN v_id_examen; -- Devolver el ID del examen creado
END;

/
--------------------------------------------------------
--  DDL for Function AGREGAR_HORARIO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "AGREGAR_HORARIO" (
    p_dia IN VARCHAR2,
    p_hora IN VARCHAR2
) RETURN NUMBER
IS
    v_id_horario NUMBER;
BEGIN
    INSERT INTO "HORARIO" (
        "DÍA",
        "HORA"
    ) VALUES (
        p_dia,
        p_hora
    )
    RETURNING "ID_HORARIO" INTO v_id_horario;

    RETURN v_id_horario; -- Devolver el ID del horario creado
END;

/
--------------------------------------------------------
--  DDL for Function ELIMINAR_EXAMEN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "ELIMINAR_EXAMEN" (
    p_id_examen IN NUMBER
) RETURN NUMBER
IS
    v_num_horarios NUMBER;
BEGIN
    -- Verificar si el examen está asignado a algún horario
    SELECT COUNT(*)
    INTO v_num_horarios
    FROM "EXAMEN_HORARIO"
    WHERE "ID_EXAMEN" = p_id_examen;

    IF v_num_horarios > 0 THEN
        -- El examen está asignado a al menos un horario, no se puede eliminar
        RETURN 0;
    ELSE
        -- El examen no está asignado a ningún horario, se puede eliminar
        DELETE FROM "EXAMEN"
        WHERE "ID_EXAMEN" = p_id_examen;

        RETURN 1; -- Indicar que el examen fue eliminado
    END IF;
END;

/
--------------------------------------------------------
--  DDL for Function ELIMINAR_HORARIO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "ELIMINAR_HORARIO" (
    p_id_horario IN NUMBER
) RETURN NUMBER
IS
    v_num_examenes NUMBER;
    v_num_grupos NUMBER;
BEGIN
    -- Verificar si el horario está asignado a algún examen
    SELECT COUNT(*)
    INTO v_num_examenes
    FROM "EXAMEN_HORARIO"
    WHERE "ID_HORARIO" = p_id_horario;

    -- Verificar si el horario está asignado a algún grupo
    SELECT COUNT(*)
    INTO v_num_grupos
    FROM "GRUPO_HORARIO"
    WHERE "ID_HORARIO" = p_id_horario;

    IF v_num_examenes > 0 OR v_num_grupos > 0 THEN
        -- El horario está asignado a algún examen o grupo, no se puede eliminar
        RETURN 0;
    ELSE
        -- El horario no está asignado a ningún examen ni grupo, se puede eliminar
        DELETE FROM "HORARIO"
        WHERE "ID_HORARIO" = p_id_horario;

        RETURN 1; -- Indicar que el horario fue eliminado
    END IF;
END;

/
--------------------------------------------------------
--  DDL for Function ELIMINAR_PREGUNTA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "ELIMINAR_PREGUNTA" (
    p_id_pregunta IN NUMBER
) RETURN NUMBER
IS
    v_num_examenes NUMBER;
BEGIN
    -- Verificar si la pregunta está siendo usada en algún examen
    SELECT COUNT(*)
    INTO v_num_examenes
    FROM "EXAMEN_PREGUNTA"
    WHERE "ID_PREGUNTA" = p_id_pregunta;

    IF v_num_examenes = 0 THEN
        -- No está siendo usada en ningún examen, se puede eliminar
        DELETE FROM "PREGUNTA"
        WHERE "ID_PREGUNTA" = p_id_pregunta;

        RETURN 1; -- Indicar que la pregunta fue eliminada
    ELSE
        -- La pregunta está siendo usada en al menos un examen, no se puede eliminar
        RETURN 0; -- Indicar que la pregunta no fue eliminada
    END IF;
END;

/
--------------------------------------------------------
--  DDL for Function INSERTAR_PREGUNTA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "INSERTAR_PREGUNTA" (
    p_texto IN VARCHAR2,
    p_opciones IN VARCHAR2,
    p_respuestas_correctas IN VARCHAR2,
    p_id_tipo IN NUMBER,
    p_tema IN VARCHAR2 DEFAULT 'No definido',
    p_privacidad IN NUMBER DEFAULT 0
) RETURN NUMBER
IS
    v_id_pregunta NUMBER;
BEGIN
    INSERT INTO "PREGUNTA" (
        "TEXTO",
        "OPCIONES",
        "RESPUESTAS_CORRECTAS",
        "ID_TIPO",
        "TEMA",
        "PRIVACIDAD"
    ) VALUES (
        p_texto,
        p_opciones,
        p_respuestas_correctas,
        p_id_tipo,
        p_tema,
        p_privacidad
    )
    RETURNING "ID_PREGUNTA" INTO v_id_pregunta;

    RETURN v_id_pregunta;
END;

/
--------------------------------------------------------
--  Constraints for Table CONTENIDO_DE_UNIDAD
--------------------------------------------------------

  ALTER TABLE "CONTENIDO_DE_UNIDAD" ADD PRIMARY KEY ("ID_CONTENIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CURSO
--------------------------------------------------------

  ALTER TABLE "CURSO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "CURSO" ADD PRIMARY KEY ("ID_CURSO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTUDIANTE
--------------------------------------------------------

  ALTER TABLE "ESTUDIANTE" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "ESTUDIANTE" ADD PRIMARY KEY ("ID_ESTUDIANTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ESTUDIANTE" MODIFY ("CONTRASEÑA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ESTUDIANTE_GRUPO
--------------------------------------------------------

  ALTER TABLE "ESTUDIANTE_GRUPO" ADD PRIMARY KEY ("ID_ESTUDIANTE", "ID_GRUPO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXAMEN
--------------------------------------------------------

  ALTER TABLE "EXAMEN" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN" MODIFY ("CANTIDAD_DE_PREGUNTAS" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN" ADD PRIMARY KEY ("ID_EXAMEN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXAMEN_HORARIO
--------------------------------------------------------

  ALTER TABLE "EXAMEN_HORARIO" ADD PRIMARY KEY ("ID_EXAMEN", "ID_HORARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EXAMEN_PREGUNTA
--------------------------------------------------------

  ALTER TABLE "EXAMEN_PREGUNTA" MODIFY ("ID_EXAMEN" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN_PREGUNTA" MODIFY ("ID_PREGUNTA" NOT NULL ENABLE);
  ALTER TABLE "EXAMEN_PREGUNTA" ADD CONSTRAINT "EXAMEN_PREGUNTA_PK" PRIMARY KEY ("ID_EXAMEN", "ID_PREGUNTA")
  USING INDEX "EXAMEN_PREGUNTA_PK"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRUPO
--------------------------------------------------------

  ALTER TABLE "GRUPO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "GRUPO" ADD PRIMARY KEY ("ID_GRUPO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRUPO_HORARIO
--------------------------------------------------------

  ALTER TABLE "GRUPO_HORARIO" ADD PRIMARY KEY ("ID_GRUPO", "ID_HORARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HORARIO
--------------------------------------------------------

  ALTER TABLE "HORARIO" MODIFY ("DIA" NOT NULL ENABLE);
  ALTER TABLE "HORARIO" MODIFY ("HORA" NOT NULL ENABLE);
  ALTER TABLE "HORARIO" ADD PRIMARY KEY ("ID_HORARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HORARIO" MODIFY ("SEMANA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PREGUNTA
--------------------------------------------------------

  ALTER TABLE "PREGUNTA" MODIFY ("PRIVACIDAD" NOT NULL ENABLE);
  ALTER TABLE "PREGUNTA" MODIFY ("OPCIONES" NOT NULL ENABLE);
  ALTER TABLE "PREGUNTA" MODIFY ("TEXTO" NOT NULL ENABLE);
  ALTER TABLE "PREGUNTA" ADD PRIMARY KEY ("ID_PREGUNTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PREGUNTA" MODIFY ("RESPUESTAS_CORRECTAS" NOT NULL ENABLE);
  ALTER TABLE "PREGUNTA" MODIFY ("ID_TIPO" NOT NULL ENABLE);
  ALTER TABLE "PREGUNTA" MODIFY ("TEMA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRESENTACION_EXAMEN
--------------------------------------------------------

  ALTER TABLE "PRESENTACION_EXAMEN" MODIFY ("ID_ESTUDIANTE" NOT NULL ENABLE);
  ALTER TABLE "PRESENTACION_EXAMEN" MODIFY ("ID_EXAMEN" NOT NULL ENABLE);
  ALTER TABLE "PRESENTACION_EXAMEN" MODIFY ("FECHA_PRESENTACION" NOT NULL ENABLE);
  ALTER TABLE "PRESENTACION_EXAMEN" MODIFY ("PUNTAJE" NOT NULL ENABLE);
  ALTER TABLE "PRESENTACION_EXAMEN" MODIFY ("TIEMPO_TOMADO" NOT NULL ENABLE);
  ALTER TABLE "PRESENTACION_EXAMEN" ADD PRIMARY KEY ("ID_PRESENTACION_EXAMEN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFESOR
--------------------------------------------------------

  ALTER TABLE "PROFESOR" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "PROFESOR" ADD PRIMARY KEY ("ID_PROFESOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PROFESOR" MODIFY ("CONTRASEÑA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UNIDAD_DE_CURSO
--------------------------------------------------------

  ALTER TABLE "UNIDAD_DE_CURSO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "UNIDAD_DE_CURSO" ADD PRIMARY KEY ("ID_UNIDAD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONTENIDO_DE_UNIDAD
--------------------------------------------------------

  ALTER TABLE "CONTENIDO_DE_UNIDAD" ADD FOREIGN KEY ("ID_UNIDAD")
	  REFERENCES "UNIDAD_DE_CURSO" ("ID_UNIDAD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ESTUDIANTE_GRUPO
--------------------------------------------------------

  ALTER TABLE "ESTUDIANTE_GRUPO" ADD FOREIGN KEY ("ID_ESTUDIANTE")
	  REFERENCES "ESTUDIANTE" ("ID_ESTUDIANTE") ENABLE;
  ALTER TABLE "ESTUDIANTE_GRUPO" ADD FOREIGN KEY ("ID_GRUPO")
	  REFERENCES "GRUPO" ("ID_GRUPO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXAMEN
--------------------------------------------------------

  ALTER TABLE "EXAMEN" ADD FOREIGN KEY ("ID_CURSO")
	  REFERENCES "CURSO" ("ID_CURSO") ENABLE;
  ALTER TABLE "EXAMEN" ADD FOREIGN KEY ("ID_PROFESOR")
	  REFERENCES "PROFESOR" ("ID_PROFESOR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXAMEN_HORARIO
--------------------------------------------------------

  ALTER TABLE "EXAMEN_HORARIO" ADD FOREIGN KEY ("ID_EXAMEN")
	  REFERENCES "EXAMEN" ("ID_EXAMEN") ENABLE;
  ALTER TABLE "EXAMEN_HORARIO" ADD FOREIGN KEY ("ID_HORARIO")
	  REFERENCES "HORARIO" ("ID_HORARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXAMEN_PREGUNTA
--------------------------------------------------------

  ALTER TABLE "EXAMEN_PREGUNTA" ADD CONSTRAINT "EXAMEN_FK" FOREIGN KEY ("ID_EXAMEN")
	  REFERENCES "EXAMEN" ("ID_EXAMEN") ON DELETE CASCADE ENABLE;
  ALTER TABLE "EXAMEN_PREGUNTA" ADD CONSTRAINT "PREGUNTA_FK" FOREIGN KEY ("ID_PREGUNTA")
	  REFERENCES "PREGUNTA" ("ID_PREGUNTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GRUPO_HORARIO
--------------------------------------------------------

  ALTER TABLE "GRUPO_HORARIO" ADD FOREIGN KEY ("ID_GRUPO")
	  REFERENCES "GRUPO" ("ID_GRUPO") ENABLE;
  ALTER TABLE "GRUPO_HORARIO" ADD FOREIGN KEY ("ID_HORARIO")
	  REFERENCES "HORARIO" ("ID_HORARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRESENTACION_EXAMEN
--------------------------------------------------------

  ALTER TABLE "PRESENTACION_EXAMEN" ADD FOREIGN KEY ("ID_ESTUDIANTE")
	  REFERENCES "ESTUDIANTE" ("ID_ESTUDIANTE") ENABLE;
  ALTER TABLE "PRESENTACION_EXAMEN" ADD FOREIGN KEY ("ID_EXAMEN")
	  REFERENCES "EXAMEN" ("ID_EXAMEN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UNIDAD_DE_CURSO
--------------------------------------------------------

  ALTER TABLE "UNIDAD_DE_CURSO" ADD FOREIGN KEY ("ID_CURSO")
	  REFERENCES "CURSO" ("ID_CURSO") ENABLE;
