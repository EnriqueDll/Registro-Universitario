CREATE DATABASE REGISTRO_UNIVERSITARIO;

USE REGISTRO_UNIVERSITARIO;


#Tabla que guarda la informacion de las facultades
CREATE TABLE facultad (
	idFacultad 					NVARCHAR(5),
    nombreFacultad 				NVARCHAR(40) NOT NULL,
    numCarreras 				INT,
	postgrado 					NVARCHAR(100),
    CONSTRAINT PK_ID_FACULTAD 	PRIMARY KEY (idFacultad)
    
);

#Tabla que guarda la informacion de la maestria
#Tiene relacion con facultad
CREATE TABLE maestria ( 
	idMaestria          		NVARCHAR(5),
	nombreMaestria              NVARCHAR(30) NOT NULL,    
	orientacion        			NVARCHAR(30) NOT NULL,
	duracion         			NVARCHAR(20),
	cantidadClases      		INT, 
	descripcionMaestria 		NVARCHAR(100),
	idFacultad             		NVARCHAR(5) NOT NULL,
	CONSTRAINT PK_MAESTRIA 		PRIMARY KEY (idMaestria),
	CONSTRAINT FK_FACULTAD  	FOREIGN KEY (idFacultad) REFERENCES facultad (idFacultad)
) ; 


#Tabla que guarda la informacion del centro
 CREATE TABLE centro ( 
	idCentro   					NVARCHAR(5),
	nombre       				NVARCHAR(30) NOT NULL, 
	ciudad 						NVARCHAR(30),
	CONSTRAINT PK_ID_CENTRO 	PRIMARY KEY (idCentro)
 ) ; 
 
 
#Tabla que guarda la informacion de las carreras
#Tiene relacion con Facultad
CREATE TABLE carrera (
	idCarrera 					NVARCHAR(5),
    nombreCarrera 				NVARCHAR(40) NOT NULL,
    descripcionCarrera 			NVARCHAR(80) NOT NULL,
    numAsignaturas 				INT,
    duracionCarrera 			NVARCHAR(15),
    facultadCarrera 			NVARCHAR(5) NOT NULL,
    CONSTRAINT PK_ID_CARRERA 	PRIMARY KEY (idCarrera),
    CONSTRAINT FK_ID_FACULTAD 	FOREIGN KEY (facultadCarrera) REFERENCES facultad (idFacultad)
    
);


#Tabla que guarda la informacion de un departamento
#Tiene una relacion con carrera
CREATE TABLE departamento (
	idDepto 					NVARCHAR(5),
    nombreDepto 				NVARCHAR(50) NOT NULL,
    jefeDepto 					NVARCHAR(40),
    numDocentes 				INT,
	carrera 					NVARCHAR(5) NOT NULL,
    CONSTRAINT PK_ID_DEPTO 		PRIMARY KEY (idDepto),
    CONSTRAINT FK_ID_CARRERA 	FOREIGN KEY (carrera) REFERENCES carrera (idCarrera)

);


#Tabla que guarda la informacion de los estudiantes
#Tiene una relacion con Carrera
CREATE TABLE estudiante (
	numCuentaEstu 				NVARCHAR(15),
    dni 						NVARCHAR(15) NOT NULL,
    nombreEstudiante 			NVARCHAR(40) NOT NULL,
    fechaNac 					DATE,
    sexo 						CHAR(1) CHECK ( SEXO IN ('F','M') ) NOT NULL,
    telefono					NVARCHAR(15),
    ciudadOrigen 				NVARCHAR(60),
	programaGrado 				NVARCHAR(50),
	carrera 					NVARCHAR(5) NOT NULL,
    correoElectronico 			NVARCHAR(30) NOT NULL,
    contrasenia 				NVARCHAR(25) NOT NULL,
    CONSTRAINT PK_NUM_CUENTA 	PRIMARY KEY (numCuentaEstu),
    CONSTRAINT FK_IDCARRERA 	FOREIGN KEY (carrera) REFERENCES carrera (idCarrera)
    
);


#Tabla que guarda la informacion de la matricula
#Tiene relacion con Estudiante
CREATE TABLE matricula (
	idMatricula 				NVARCHAR(15),
    fechaHoraMatricula 			DATE DEFAULT NOW(),
    periodo 					NVARCHAR(10),
    anio 						NVARCHAR(5),
    cuentaEstudiante 			NVARCHAR(15) NOT NULL,
	CONSTRAINT PK_ID_MATRICULA 	PRIMARY KEY (idMatricula),
    CONSTRAINT FK_NUM_ESTUDI 	FOREIGN KEY (cuentaEstudiante) REFERENCES estudiante (numCuentaEstu)
);


#Tabla que guarda la informacion de una clase
#Tiene relacion con Matricula y Departamento
CREATE TABLE clase (
	idClase 					NVARCHAR(6),
    nombreClase 				NVARCHAR(30) NOT NULL,
    descripcionClase 			NVARCHAR(100),
	requisitoClase 				NVARCHAR(30),
    idMatricula 				NVARCHAR(15) NOT NULL,
	depto 						NVARCHAR(5) NOT NULL,
    CONSTRAINT PK_ID_CLASE		PRIMARY KEY (idClase),
    CONSTRAINT FK_ID_MATRICULA 	FOREIGN KEY (idMatricula) REFERENCES matricula (idMatricula),
	CONSTRAINT FK_ID_DEPTO 		FOREIGN KEY (depto) REFERENCES departamento (idDepto)
);


#Tabla que guarda la informacion de un laboratorio
#Tiene relacion con Clase
CREATE TABLE laboratorio (
	idLab 						NVARCHAR(6),
    nombreLab 					NVARCHAR(30) NOT NULL,
    descripcion 				NVARCHAR(100),
    clase 						NVARCHAR(6),
    CONSTRAINT PK_ID_LAB		PRIMARY KEY (idLab),
	CONSTRAINT FK_ID_CLASE 		FOREIGN KEY (clase) REFERENCES clase (idClase)
);


#Tabla que guarda la informacion de los edificios
#Tiene relacion con Centro
 CREATE TABLE edificio (
	idEdificio       			NVARCHAR(5),
	aula			 			INT,
	aulaLab		    			INT,
    aulasDisponibles			INT NOT NULL,
    aulasLabDisponibles 		INT NOT NULL,
	centro           			NVARCHAR (5),
	CONSTRAINT PK_ID_EDIFICIO	PRIMARY KEY (idEdificio), 
    CONSTRAINT FK_ID_CENTRO 	FOREIGN KEY (centro) REFERENCES centro(idCentro)
 ) ; 
 
 
#Tabla que guarda la informacion de docentes
#Tiene relacion con departamento
CREATE TABLE docente (
	numCuentaDocente 			NVARCHAR(15),
    dni 						NVARCHAR(15) NOT NULL,
    nombreDocente	 			NVARCHAR(40) NOT NULL,
    fechaNac 					DATE,
    sexo 						CHAR(1) CHECK ( SEXO IN ('F','M') ) NOT NULL,
    telefono					NVARCHAR(15),
    ciudadOrigen 				NVARCHAR(60),
	depto 						NVARCHAR(5) NOT NULL,
    correoElectronico 			NVARCHAR(30) NOT NULL,
    contrasenia 				NVARCHAR(25) NOT NULL,
    CONSTRAINT PK_NUM_CUENTA 	PRIMARY KEY (numCuentaDocente),
    CONSTRAINT FK_IDDEPTO 		FOREIGN KEY (depto) REFERENCES departamento (idDepto)
);


#Tabla que guarda la informacion de la seccion
#Tiene relacion con clase o laboratorio
CREATE TABLE seccion (
	idSeccion 					NVARCHAR(5),
    clase 						NVARCHAR(6),
    laboratorio 				NVARCHAR(6),
	numSeccion 					INT NOT NULL,
    horaSeccion 				NVARCHAR(6) NOT NULL,
    diaSeccion 					NVARCHAR(15) NOT NULL,
    numEstudiantes 				INT NOT NULL,
    CONSTRAINT PK_ID_SECCION 	PRIMARY KEY (idSeccion),
    CONSTRAINT FK_IDCLASE 		FOREIGN KEY (clase) REFERENCES clase (idClase),
	CONSTRAINT FK_ID_LAB 		FOREIGN KEY (laboratorio) REFERENCES laboratorio (idLab)
);


#Tabla que relaciona la seccion con el edificio
CREATE TABLE se_imparten (
	idEdificio 					NVARCHAR(5) NOT NULL,
    idSeccion 					NVARCHAR(5) NOT NULL,
	CONSTRAINT PK_SE_IMPARTEN 	PRIMARY KEY (idEdificio, idSeccion),
    CONSTRAINT fk_ID_EDIFICIO  	FOREIGN KEY (idEdificio) REFERENCES edificio(idEdificio),
    CONSTRAINT fk_IDSECCION 	FOREIGN KEY (idSeccion) REFERENCES seccion(idSeccion)
);


#Tabla que relacion la seccion con el docente que la imparte
CREATE TABLE imparte ( 	
   numDocente 					NVARCHAR (15) NOT NULL,
   idSeccion     				NVARCHAR (5) NOT NULL,
   CONSTRAINT PK_IMPARTEN 		PRIMARY KEY (numDocente, idSeccion),
   CONSTRAINT FK_NUM_DOCENTE  	FOREIGN KEY (numDocente) REFERENCES docente(numCuentaDocente),
   CONSTRAINT FK_SECCION 		FOREIGN KEY (idSeccion) REFERENCES seccion(idSeccion)
 ) ;

