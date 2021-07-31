CREATE DATABASE REGISTRO_UNIVERSITARIO;
USE REGISTRO_UNIVERSITARIO;

#Tabla que guarda la informacion de las facultades
CREATE TABLE FACULTAD(
	idFacultad 					NVARCHAR(5),
    nombreFacultad 				NVARCHAR(40) NOT NULL,
    numCarreras 				INT, 
    CONSTRAINT PK_ID_FACULTAD 	PRIMARY KEY (idFacultad)
);

#Tabla que guarda la informacion de la maestria
#Tiene relacion con facultad
CREATE TABLE MAESTRIA ( 
	idMaestria          		NVARCHAR(5),
	nombreMaestria              NVARCHAR(30) NOT NULL,    
	orientacion        			NVARCHAR(30) NOT NULL,
	grado                       NVARCHAR(20) NOT NULL DEFAULT 'Postgrado',
	duracion         			NVARCHAR(20),
	cantidadClases      		INT, 
	descripcionMaestria 		NVARCHAR(100),
	idFacultad             		NVARCHAR(5) NOT NULL,
	CONSTRAINT PK_MAESTRIA 		PRIMARY KEY (idMaestria),
	CONSTRAINT FK_FACULTAD  	FOREIGN KEY (idFacultad) REFERENCES facultad (idFacultad)
) ; 
Alter table maestria modify nombreMaestria nvarchar(300) Not null;
Alter table maestria modify descripcionMaestria nvarchar(800) Not null;

#Tabla que guarda la informacion de las carreras
#Tiene relacion con Facultad
CREATE TABLE carrera (
	idCarrera 					NVARCHAR(5),
    nombreCarrera 				NVARCHAR(40) NOT NULL,
    descripcionCarrera 			NVARCHAR(80) NOT NULL,
    numAsignaturas 				INT,
    grado                       NVARCHAR(20) NOT NULL DEFAULT 'Pregrado',
    duracionCarrera 			NVARCHAR(15),
    facultadCarrera 			NVARCHAR(5), 
    CONSTRAINT PK_ID_CARRERA 	PRIMARY KEY (idCarrera),
    CONSTRAINT FK_ID_FACULTAD 	FOREIGN KEY (facultadCarrera) REFERENCES facultad (idFacultad)
    
);
Alter table carrera modify descripcionCarrera nvarchar(800) Not null;

#Tabla que guarda la informacion de un departamento
#Tiene una relacion con carrera
CREATE TABLE departamento (
	idDepto 					NVARCHAR(5),
    nombreDepto 				NVARCHAR(50) NOT NULL,
	carrera 					NVARCHAR(5) NOT NULL,
    CONSTRAINT PK_ID_DEPTO 		PRIMARY KEY (idDepto),
    CONSTRAINT FK_ID_CARRERA 	FOREIGN KEY (carrera) REFERENCES carrera (idCarrera)
);


#Tabla que guarda la informacion de los estudiantes
#Tiene una relacion con Carrera
CREATE TABLE estudiante (
	numCuentaEstu 				NVARCHAR(15),
    dni 						NVARCHAR(15) UNIQUE, 
    nombreEstudiante 			NVARCHAR(40) NOT NULL,
    fechaNac 					DATE,
    sexo 						CHAR(1) CHECK ( SEXO IN ('F','M') ) NOT NULL,
    telefono					NVARCHAR(15),
    ciudadOrigen 				NVARCHAR(60),
    carrera 					NVARCHAR(5) ,
    correoElectronico 			NVARCHAR(30) NOT NULL,
    contrasenia 				NVARCHAR(25) NOT NULL,
    CONSTRAINT PK_NUM_CUENTA 	PRIMARY KEY (numCuentaEstu),
    CONSTRAINT FK_IDCARRERA 	FOREIGN KEY (carrera) REFERENCES carrera (idCarrera)
);


#Tabla que guarda la informacion de la matricula
#Tiene relacion con Estudiante
CREATE TABLE matricula (
	idMatricula 				NVARCHAR(15),
    fechaHoraMatricula 			DATE, ##cambiar tipo de dato
    periodo 					NVARCHAR(10),
    anio 						NVARCHAR(5),
    cuentaEstudiante 			NVARCHAR(15) , 
	CONSTRAINT PK_ID_MATRICULA 	PRIMARY KEY (idMatricula),
    CONSTRAINT FK_NUM_ESTUDI 	FOREIGN KEY (cuentaEstudiante) REFERENCES estudiante (numCuentaEstu)
);



#Tabla que guarda la informacion de una clase
#Tiene relacion con Matricula y Departamento
CREATE TABLE clase (
	idClase 					NVARCHAR(6),
    nombreClase 				NVARCHAR(30) NOT NULL,
    descripcionClase 			NVARCHAR(100),
    idMatricula 				NVARCHAR(15) ,
	depto 						NVARCHAR(5) ,
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
	aula			 			INT UNIQUE, 
	aulaLab		    			INT UNIQUE, 
    estado                      VARCHAR (20) CHECK(estado IN ('Disponible','Ocupada')),
	CONSTRAINT PK_ID_EDIFICIO	PRIMARY KEY (idEdificio)
    ) ; 
 
 
#Tabla que guarda la informacion de docentes
#Tiene relacion con departamento
CREATE TABLE docente (
	numCuentaDocente 			NVARCHAR(15),
    dni 						NVARCHAR(15) UNIQUE,
    nombreDocente	 			NVARCHAR(40) NOT NULL,
    fechaNac 					DATE,
    sexo 						CHAR(1) CHECK ( SEXO IN ('F','M') ) NOT NULL,
    telefono					NVARCHAR(15),
    ciudadOrigen 				NVARCHAR(60),
	depto 						NVARCHAR(5) ,
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
## inserts de facultades
INSERT INTO FACULTAD VALUES('001','Medicina',3);
INSERT INTO FACULTAD VALUES('002','Ingenieria',3);
INSERT INTO FACULTAD VALUES('003','Economia',2);
INSERT INTO FACULTAD VALUES('004','Ciencias',2);
INSERT INTO FACULTAD VALUES('005','Derecho',1);

SELECT* FROM FACULTAD;

## insert carreras
INSERT INTO CARRERA VALUES('100','Medicina General','La Carrera de Medicina tiene como finalidad formar profesionales médicos con visión integral, capaces de detectar problemas de salud individual y comunitaria','68',default,'8 años','001');
INSERT INTO CARRERA VALUES('200','Terapia Funcional','Forma profesionales capacitados para la atención de la persona con discapacidad mediante una preparación científica, técnica, humanista','52',default,'2 años y medio','001');
INSERT INTO CARRERA VALUES('300','Microbiologia','Organizar, dirigir y desarrollar la formación ética, integral y holística de profesionales de la Microbiología, la investigación y la vinculación','62',default,'4 años','001');

INSERT INTO CARRERA VALUES('400','Ingenieria en Sistemas','La ingeniería de sistemas es un campo interdisciplinario de la ingeniería que permite estudiar y comprender la realidad','56',default,'5 años','002');
INSERT INTO CARRERA VALUES('500','Ingenieria Mecanica','Esta disciplina estudia y perfecciona específicamente los principios de la termodinámica, trasferencia de calor, mecánica,vibraciones, mecánica clásica, entre otros campos.','62',default,'5 años','002');
INSERT INTO CARRERA VALUES('600','Ingenieria Civil','La ingeniería civil es la disciplina de la ingeniería que emplea conocimientos de cálculo, mecánica, hidráulica y física para encargarse del diseño, construcción ','60',default,'5 años','002');

INSERT INTO CARRERA VALUES('700','Contaduria Publica','Es una disciplina de carácter científico fundamentada en una teoría específica, que a través de un proceso obtiene y comprueba información financiera','52',default,'5 años','003');
INSERT INTO CARRERA VALUES('800','Administracion de Empresas','Es una disciplina de carácter científico fundamentada en una teoría específica, que a través de un proceso obtiene y comprueba información financiera','52',default,'5 años','003');

INSERT INTO CARRERA VALUES('900','Matematicas','Formación de profesionales matemáticos, capaces de transmitir conocimientos y participar en la solución de problemas a nivel nacional','54',default,'4 años','004');
INSERT INTO CARRERA VALUES('010','Fisica','Tiene como misión la generación, desarrollo, integración y comunicación del saber dentro de las ciencias de la tierra','52',default,'5 años','004');

SELECT* FROM CARRERA;

##insert de maestrias
INSERT INTO MAESTRIA VALUES('011','Maestria en Ingenieria Ambiental','Desarrollo Sostenible',default,'2 años','34','La carrera de Ingeniería Ambiental es la encargada de estudiar los problemas ambientales de forma integrada, en todas las dimensiones: ecológicas, sociales, económicas y tecnológicas buscando el desarrollo sostenible.','002');
INSERT INTO MAESTRIA VALUES('012','Maestria en Gestion de Empresas Coorporativas','Finanzas',default,'2 años','34',' La maestría proveerá al participante de conocimientos sólidos y herramientas necesarias para afrontar la competencia y los cambios en el mundo de los negocios','003');
INSERT INTO MAESTRIA VALUES('013','Maestria en Administracion de Empresas','Finanzas',default,'2 años','34','Formula proyectos productivos para la pequeña,mediana y gran empresa. Conoce las herramientas básicas del proceso investigativo,que le permitan mantener una constante actitud de búsqueda de soluciones científicas a los problemas empresariales.','003');
INSERT INTO MAESTRIA VALUES('014','Maestria en Ingenieria de la construccion y Gerencia de Proyectos','Ingenieria para el desarrollo',default,'2 años','34','Se enfoca “a suplir la necesidad de los ingenieros civiles o en construcción de estar capacitados en temáticas de actualidad','002');
INSERT INTO MAESTRIA VALUES('015','Especialidad en Cirugia General','Salud',default,'5 años','68','Preparar a médicos en la Especialidad de Cirugía General de tal forma que al concluir el curso tengan la capacidad de establecer tanto el diagnóstico como el manejo de las enfermedades','001');
INSERT INTO MAESTRIA VALUES('016','Maestria en Salud Publica','Salud',default,'5 años','68','La Maestría en Salud Pública ofrece una preparación integral con herramientas y competencias que permitan a los profesionales enfrentar los problemas de salud pública','001');

SELECT* FROM MAESTRIA;


##insert departamento
INSERT INTO DEPARTAMENTO VALUES('2120','Departamento de Ing.Sistemas','400');
INSERT INTO DEPARTAMENTO VALUES('2121','Departamento de Ing.Civil','600');
INSERT INTO DEPARTAMENTO VALUES('2122','Departamento de Ing.Mecanica','500');
INSERT INTO DEPARTAMENTO VALUES('2123','Departamento de Ciencias Economicas','300');
INSERT INTO DEPARTAMENTO VALUES('2124','Departamento de Medicina General','100');
INSERT INTO DEPARTAMENTO VALUES('2125','Departamento de Matematicas','900');

## ---------------------- A PARTIR DE AQUI HAY QUE HACER MAS INSERT------------------------

##insert estudiantes
##fecha tiene el formato YYYY-MM-DD
INSERT INTO ESTUDIANTE VALUES('201721000','0801-1999-13759','Andrea Michelle Calix Gonzalez','1999-05-25','F','3352-9093','Tegucigalpa','400','calix25@','232425');
INSERT INTO ESTUDIANTE VALUES('201821000','0801-2000-21759','Eskarleth Lizeth Maradiaga Corrales','2000-10-09','F','9852-9093','Tegucigalpa','010','maradiagaeskar25@','eskar07');
INSERT INTO ESTUDIANTE VALUES('201821001','1807-2000-00585','Thiago Isai Merlo','2000-12-06','M','9852-9883','Yoro','400','thiago6@','thiago');
INSERT INTO ESTUDIANTE VALUES('201521001','0801-1998-23685','Aaron Isaac Raudales Valle','1998-11-14','M','3452-9883','San Pedro Sula','600','aaronraduales@','raudales13');
INSERT INTO ESTUDIANTE VALUES('202021001','0801-2001-53685','Jesua Raudales Miralda','2001-03-22','M','9352-9883','Tegucigalpa','500','jesua_raduales@','abril10');

SELECT* FROM ESTUDIANTE;


##insert matricula
INSERT INTO MATRICULA VALUES('01',now(),'1','2021','201721000');
INSERT INTO MATRICULA VALUES('02',now(),'1','2021','202021001');
INSERT INTO MATRICULA VALUES('03',now(),'1','2021','201521001');

SELECT* FROM MATRICULA;

##INSERT CLASES
INSERT INTO CLASE VALUES('IS-512','Sistemas Operativos','','01','2120');
INSERT INTO CLASE VALUES('IS-720','Contabilidad','','01','2120');
INSERT INTO CLASE VALUES('IS-411','Electronica','','01','2120');
INSERT INTO CLASE VALUES('IS-510','Instalaciones Electricas','','01','2120');

SELECT* FROM CLASE;


SELECT E.nombreEstudiante,E.numCuentaEstu, C.nombreCarrera FROM ESTUDIANTE E INNER JOIN CARRERA C ON E.carrera=C.idCarrera ;


