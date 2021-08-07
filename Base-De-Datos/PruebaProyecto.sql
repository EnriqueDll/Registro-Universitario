CREATE DATABASE REGISTRO_UNIVERSITARIO_PRUEBA;
USE REGISTRO_UNIVERSITARIO_PRUEBA;

#Tabla que guarda la informacion de las facultades
CREATE TABLE facultad (
	idFacultad 					INT,
    nombreFacultad 				VARCHAR(40) NOT NULL,
    numCarreras 				INT,
    CONSTRAINT PK_ID_FACULTAD 	PRIMARY KEY (idFacultad)
);

drop table facultad;

drop table carrera;

select * from facultad;

select * from carrera;

#Tabla que guarda la informacion de la maestria
#Tiene relacion con facultad
CREATE TABLE maestria ( 
	idMaestria          		INT,
	nombreMaestria              VARCHAR(300) NOT NULL,    
	orientacion        			VARCHAR(30) NOT NULL,
	grado                       VARCHAR(20) NOT NULL DEFAULT 'Postgrado',
	duracion         			VARCHAR(20),
	cantidadClases      		INT, 
	descripcionMaestria 		VARCHAR(800),
	idFacultad             		INT,
	CONSTRAINT PK_MAESTRIA 		PRIMARY KEY (idMaestria),
	CONSTRAINT FK_FACULTAD  	FOREIGN KEY (idFacultad) REFERENCES facultad (idFacultad)
) ; 
#Alter table maestria modify nombreMaestria nvarchar(300) Not null;
#Alter table maestria modify descripcionMaestria nvarchar(800) Not null;

#Tabla que guarda la informacion de las carreras
#Tiene relacion con Facultad
CREATE TABLE carrera (
	idCarrera 					int,
    nombreCarrera 				VARCHAR(40) NOT NULL,
    descripcionCarrera 			VARCHAR(800) NOT NULL,
    numAsignaturas 				INT,
    grado                       VARCHAR(20) NOT NULL DEFAULT 'Pregrado',
    duracionCarrera 			VARCHAR(15),
    idFacultad 					INT, 
    CONSTRAINT PK_ID_CARRERA 	PRIMARY KEY (idCarrera),
    CONSTRAINT FK_FACULTAD_C	FOREIGN KEY (idFacultad) REFERENCES facultad (idFacultad)
    
);

Drop Table carrera;

#Tabla que guarda la informacion de un departamento
#Tiene una relacion con carrera
CREATE TABLE departamento (
	idDepto 					INT,
    nombreDepto 				VARCHAR(50) NOT NULL,
	idCarrera 					INT,
    CONSTRAINT PK_ID_DEPTO 		PRIMARY KEY (idDepto),
    CONSTRAINT FK_ID_CARRERA 	FOREIGN KEY (idCarrera) REFERENCES carrera (idCarrera)
);


#Tabla que guarda la informacion de los estudiantes
#Tiene una relacion con Carrera
CREATE TABLE estudiante (
	numCuentaEstu 				VARCHAR(15),
    dni 						VARCHAR(15) UNIQUE, 
    nombreEstudiante 			VARCHAR(40) NOT NULL,
    fechaNac 					DATE,
    sexo 						CHAR(1) CHECK ( SEXO IN ('F','M') ) NOT NULL,
    telefono					VARCHAR(15),
    ciudadOrigen 				VARCHAR(60),
    correoElectronico 			VARCHAR(30) NOT NULL,
    contrasenia 				VARCHAR(25) NOT NULL,
	idCarrera					INT,
    CONSTRAINT PK_NUM_CUENTA 	PRIMARY KEY (numCuentaEstu),
    CONSTRAINT FK_IDCARRERA 	FOREIGN KEY (idCarrera) REFERENCES carrera (idCarrera)
);
select * from estudiante;

#Tabla que guarda la informacion de la matricula
#Tiene relacion con Estudiante
CREATE TABLE matricula (
	idMatricula 				INT,
    fechaMatricula		 		DATETIME default now(),
    periodo 					VARCHAR(10),
    anio 						VARCHAR(5),
    numCuentaEstu 				VARCHAR(15) , 
	CONSTRAINT PK_ID_MATRICULA 	PRIMARY KEY (idMatricula),
    CONSTRAINT FK_NUM_ESTUDI 	FOREIGN KEY (numCuentaEstu) REFERENCES estudiante (numCuentaEstu)
);

select * from matricula;
drop table matricula;

#Tabla que guarda la informacion de una clase
#Tiene relacion con Matricula y Departamento
CREATE TABLE clase (
	idClase 					VARCHAR(6),
    codigoClase					VARCHAR(6) NOT NULL,
    nombreClase 				VARCHAR(30) NOT NULL,
    descripcionClase 			VARCHAR(100),
    idMatricula 				INT,
	idDepto 					INT,
    CONSTRAINT PK_ID_CLASE		PRIMARY KEY (idClase),
    CONSTRAINT FK_ID_MATRICULA 	FOREIGN KEY (idMatricula) REFERENCES matricula (idMatricula),
	CONSTRAINT FK_ID_DEPTO 		FOREIGN KEY (idDepto) REFERENCES departamento (idDepto)
);


#Tabla que guarda la informacion de un laboratorio
#Tiene relacion con Clase
CREATE TABLE laboratorio (
	idLab 						VARCHAR(6),
    nombreLab 					VARCHAR(30) NOT NULL, 
    descripcion 				VARCHAR(100),
    idClase 					VARCHAR(6),
    CONSTRAINT PK_ID_LAB		PRIMARY KEY (idLab),
	CONSTRAINT FK_ID_CLASE 		FOREIGN KEY (idClase) REFERENCES clase (idClase)
);


#Tabla que guarda la informacion de los edificios
 CREATE TABLE edificio (
	idEdificio       			INT,
	aula			 			INT UNIQUE, 
	aulaLab		    			INT UNIQUE, 
    estado                      VARCHAR (20) CHECK(estado IN ('Disponible','Ocupada')),
	CONSTRAINT PK_ID_EDIFICIO	PRIMARY KEY (idEdificio)
    ); 
 
 
#Tabla que guarda la informacion de docentes
#Tiene relacion con departamento
CREATE TABLE docente (
	numCuentaDocente 			VARCHAR(15),
    dni 						VARCHAR(15) UNIQUE,
    nombreDocente	 			VARCHAR(40) NOT NULL,
    fechaNac 					DATE,
    sexo 						CHAR(1) CHECK ( SEXO IN ('F','M') ) NOT NULL,
    telefono					VARCHAR(15),
    ciudadOrigen 				VARCHAR(60),
    correoElectronico 			VARCHAR(30) NOT NULL,
    contrasenia 				VARCHAR(25) NOT NULL,
    idDepto 					VARCHAR(5),
    CONSTRAINT PK_NUM_CUENTA 	PRIMARY KEY (numCuentaDocente),
    CONSTRAINT FK_IDDEPTO 		FOREIGN KEY (idDepto) REFERENCES departamento (idDepto)
);


#Tabla que guarda la informacion de la seccion
#Tiene relacion con clase o laboratorio
CREATE TABLE seccion (
	idSeccion 					INT, #0001
    idClase 					VARCHAR(6),
	numSeccion 					INT NOT NULL, #2000
    horaSeccion 				VARCHAR(6) NOT NULL,
    diaSeccion 					VARCHAR(15) NOT NULL,
    numEstudiantes 				INT NOT NULL,
    CONSTRAINT PK_ID_SECCION 	PRIMARY KEY (idSeccion),
    CONSTRAINT FK_IDCLASE 		FOREIGN KEY (idClase) REFERENCES clase (idClase)
);

CREATE TABLE seccionLab (
	idSeccionLab 				INT, #0001
    idLab		 				VARCHAR(6),
	numSeccion 					INT NOT NULL, #2000
    horaSeccion 				VARCHAR(6) NOT NULL,
    diaSeccion 					VARCHAR(15) NOT NULL,
    numEstudiantes 				INT NOT NULL,
    CONSTRAINT PK_ID_SECCION 	PRIMARY KEY (idSeccion),
	CONSTRAINT FK_ID_LAB 		FOREIGN KEY (idLab) REFERENCES laboratorio (idLab)
);

#Tabla que relaciona la seccion con el edificio
CREATE TABLE se_imparten (
	idEdificio 					INT,
    idSeccion 					INT,
    idSeccionLab				INT,
	CONSTRAINT PK_SE_IMPARTEN 	PRIMARY KEY (idEdificio, idSeccion),
    CONSTRAINT fk_ID_EDIFICIO  	FOREIGN KEY (idEdificio) REFERENCES edificio(idEdificio),
    CONSTRAINT fk_IDSECCION 	FOREIGN KEY (idSeccion) REFERENCES seccion(idSeccion),
	CONSTRAINT fk_IDSECCIONLAB 	FOREIGN KEY (idSeccionLab) REFERENCES seccionLab(idSeccionLab)
);

#Tabla que relacion la seccion con el docente que la imparte
CREATE TABLE imparte ( 	
   numCuentaDocente 			VARCHAR (15) NOT NULL,
   idSeccion     				INT,
   idSeccionLab					INT,
   CONSTRAINT PK_IMPARTEN 		PRIMARY KEY (numDocente, idSeccion),
   CONSTRAINT FK_NUM_DOCENTE  	FOREIGN KEY (numCuentaDocente) REFERENCES docente(numCuentaDocente),
   CONSTRAINT FK_SECCION 		FOREIGN KEY (idSeccion) REFERENCES seccion(idSeccion),
   CONSTRAINT fk_IDSECCION_LAB 	FOREIGN KEY (idSeccionLab) REFERENCES seccionLab(idSeccionLab)
 ) ;