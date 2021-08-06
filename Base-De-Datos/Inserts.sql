USE REGISTRO_UNIVERSITARIO;
## -----------------------  inserts de facultades ----------------------------
INSERT INTO FACULTAD VALUES('001','Medicina',3);
INSERT INTO FACULTAD VALUES('002','Ingenieria',3);
INSERT INTO FACULTAD VALUES('003','Economia',2);
INSERT INTO FACULTAD VALUES('004','Ciencias',2);
INSERT INTO FACULTAD VALUES('005','Derecho',1);

## -------------------------- insert carreras -------------------------------------
# cada carrera pertenece a una facultad
#FACULTAD MEDICINA
INSERT INTO CARRERA VALUES('100','Medicina General','La Carrera de Medicina tiene como finalidad formar profesionales médicos con visión integral, capaces de detectar problemas de salud individual y comunitaria','68',default,'8 años','001');
INSERT INTO CARRERA VALUES('200','Terapia Funcional','Forma profesionales capacitados para la atención de la persona con discapacidad mediante una preparación científica, técnica, humanista','52',default,'2 años y medio','001');
INSERT INTO CARRERA VALUES('300','Microbiologia','Organizar, dirigir y desarrollar la formación ética, integral y holística de profesionales de la Microbiología, la investigación y la vinculación','62',default,'4 años','001');
# FACULTAD DE INGENIERIA
INSERT INTO CARRERA VALUES('400','Ingenieria en Sistemas','La ingeniería de sistemas es un campo interdisciplinario de la ingeniería que permite estudiar y comprender la realidad','56',default,'5 años','002');
INSERT INTO CARRERA VALUES('500','Ingenieria Mecanica','Esta disciplina estudia y perfecciona específicamente los principios de la termodinámica, trasferencia de calor, mecánica,vibraciones, mecánica clásica, entre otros campos.','62',default,'5 años','002');
INSERT INTO CARRERA VALUES('600','Ingenieria Civil','La ingeniería civil es la disciplina de la ingeniería que emplea conocimientos de cálculo, mecánica, hidráulica y física para encargarse del diseño, construcción ','60',default,'5 años','002');
# FACULTAD ECONOMIA
INSERT INTO CARRERA VALUES('700','Contaduria Publica','Es una disciplina de carácter científico fundamentada en una teoría específica, que a través de un proceso obtiene y comprueba información financiera','52',default,'5 años','003');
INSERT INTO CARRERA VALUES('800','Administracion de Empresas','Es una disciplina de carácter científico fundamentada en una teoría específica, que a través de un proceso obtiene y comprueba información financiera','52',default,'5 años','003');
# FACULTAD CIENCIAS
INSERT INTO CARRERA VALUES('900','Matematicas','Formación de profesionales matemáticos, capaces de transmitir conocimientos y participar en la solución de problemas a nivel nacional','54',default,'4 años','004');
INSERT INTO CARRERA VALUES('010','Fisica','Tiene como misión la generación, desarrollo, integración y comunicación del saber dentro de las ciencias de la tierra','52',default,'5 años','004');
# FACULTAD DERECHO
INSERT INTO CARRERA VALUES('011','Derecho','Tiene como finalidad generar profesionales expertos en leyes y codigos juridicos','64',default,'4 años','005');


## ---------------------------------- insert de maestrias ------------------------------------------------
INSERT INTO MAESTRIA VALUES('011','Maestria en Ingenieria Ambiental','Desarrollo Sostenible',default,'2 años','34','La carrera de Ingeniería Ambiental es la encargada de estudiar los problemas ambientales de forma integrada, en todas las dimensiones: ecológicas, sociales, económicas y tecnológicas buscando el desarrollo sostenible.','002');
INSERT INTO MAESTRIA VALUES('012','Maestria en Gestion de Empresas Coorporativas','Finanzas',default,'2 años','34',' La maestría proveerá al participante de conocimientos sólidos y herramientas necesarias para afrontar la competencia y los cambios en el mundo de los negocios','003');
INSERT INTO MAESTRIA VALUES('013','Maestria en Administracion de Empresas','Finanzas',default,'2 años','34','Formula proyectos productivos para la pequeña,mediana y gran empresa. Conoce las herramientas básicas del proceso investigativo,que le permitan mantener una constante actitud de búsqueda de soluciones científicas a los problemas empresariales.','003');
INSERT INTO MAESTRIA VALUES('014','Maestria en Ingenieria de la construccion y Gerencia de Proyectos','Ingenieria para el desarrollo',default,'2 años','34','Se enfoca “a suplir la necesidad de los ingenieros civiles o en construcción de estar capacitados en temáticas de actualidad','002');
INSERT INTO MAESTRIA VALUES('015','Especialidad en Cirugia General','Salud',default,'5 años','68','Preparar a médicos en la Especialidad de Cirugía General de tal forma que al concluir el curso tengan la capacidad de establecer tanto el diagnóstico como el manejo de las enfermedades','001');
INSERT INTO MAESTRIA VALUES('016','Maestria en Salud Publica','Salud',default,'5 años','68','La Maestría en Salud Pública ofrece una preparación integral con herramientas y competencias que permitan a los profesionales enfrentar los problemas de salud pública','001');

## -----------------------  insert departamento  --------------------------
INSERT INTO DEPARTAMENTO VALUES('2120','Departamento de Ing.Sistemas','400'); #ing sistemas
INSERT INTO DEPARTAMENTO VALUES('2121','Departamento de Ing.Civil','600'); # ing civil
INSERT INTO DEPARTAMENTO VALUES('2122','Departamento de Ing.Mecanica','500'); # ing mecanica

INSERT INTO DEPARTAMENTO VALUES('2123','Departamento de Matematicas','900');#matematicas
INSERT INTO DEPARTAMENTO VALUES('2124','Departamento de Fisica','010'); #fisica

INSERT INTO DEPARTAMENTO VALUES('2125','Departamento de Contaduria Publica','700'); #carreras de contaduria
INSERT INTO DEPARTAMENTO VALUES('2126','Departamento de Admin de Empresas','800'); #carreras de admin empresas

INSERT INTO DEPARTAMENTO VALUES('2127','Departamento de Medicina General','100'); #carreras de medicina
INSERT INTO DEPARTAMENTO VALUES('2128','Departamento de Terapia','200'); # terapia
INSERT INTO DEPARTAMENTO VALUES('2129','Departamento de Microbiologia','300'); #microbiologia

INSERT INTO DEPARTAMENTO VALUES('2130','Departamento de Derecho','011');#derecho

## ---------------------- A PARTIR DE AQUI HAY QUE HACER MAS INSERT------------------------
#fecha tiene el formato YYYY-MM-DD
# insetar dni Y TELEFONO sin guiones
# numero de cuenta es un dni invertido

## ---------------------------- insert estudiantes -----------------------------------------------
INSERT INTO ESTUDIANTE VALUES('9573199911080','0801199913759','Andrea Michelle Calix Gonzalez','1999-05-25','F','33529093','Tegucigalpa','400','calix25@','232425');
INSERT INTO ESTUDIANTE VALUES('9571200021080','0801200021759','Eskarleth Lizeth Maradiaga Corrales','2000-10-09','F','98529093','Tegucigalpa','010','maradiagaeskar25@','eskar07');
INSERT INTO ESTUDIANTE VALUES('5850000027081','1807200000585','Thiago Isai Merlo','2000-12-06','M','98529883','Yoro','400','thiago6@','thiago');
INSERT INTO ESTUDIANTE VALUES('5863289911080','0801199823685','Aaron Isaac Raudales Valle','1998-11-14','M','34529883','San Pedro Sula','600','aaronraduales@','raudales13');
INSERT INTO ESTUDIANTE VALUES('5863510021080','0801200153685','Jesua Raudales Miralda','2001-03-22','M','9352-9883','Tegucigalpa','500','jesua_raduales@','abril10');
##Inserts de Galo
INSERT INTO ESTUDIANTE VALUES('3065010021080','0801200105603','Alex Daniel Galo Soto','2001-03-03','M','98508147','Tegucigalpa','300','alexgalo@','griffith124') ; 
INSERT INTO ESTUDIANTE VALUES('1666000021080','0801200006661','Esthefani Michell Alvarez Ordoñez','2000-07-04','F', '92504714' ,'Comayagua','700','esthefalv@','samantha123');
INSERT INTO ESTUDIANTE VALUES('1632099911080','0801199902361','Axel Galo Soto','1999-05-01','M','97502563','San Pedro Sula','500','axelger@','copetin500');
INSERT INTO ESTUDIANTE VALUES('2345030025050','0505200305432','Fernando Enrique Garcia','1996-05-23','M','92305433','Tegucigalpa','600','ferenrq@','cocomax123');
INSERT INTO ESTUDIANTE VALUES('6528089911080','0801199808256','Oscar Ariel Galo Soto','1996-05-23', 'M','90985263','Ocotepeque','400','oscargsoto@','incorrecta!23');
INSERT INTO ESTUDIANTE VALUES('8685080021080','0801200805868','Lorena Maria Soto Andino','2003-07-15','F','96303027','Yoro','300','lorenasoto@','jesu12304');
INSERT INTO ESTUDIANTE VALUES('8432099915040','0405199902348','Santos Benigno Galo Gonzales','1999-05-22','M','99905433','San Pedro Sula','700','santosbenigno@','cumplimientos05660');
INSERT INTO ESTUDIANTE VALUES('9993000021080','0801200003999','Lorena Francisca Mejia Funez','2003-02-26','F','95803222','Tegucigalpa','500','lomejifun@','franciaparis!43');
INSERT INTO ESTUDIANTE VALUES('5032000021080','0801200002305','Alessandro Bustillo Flores','2004-09-24','M','92000432','Yoro','600','alessbusti@','adriana2462!.');
INSERT INTO ESTUDIANTE VALUES('5023040021080','0801200403205','Gustavo Andres Barahona','1999-05-25','F','33529093','Tegucigalpa','400','calix25@','232425');
INSERT INTO ESTUDIANTE VALUES('5043076911060','0601196703405','Samuel Alexander Lopez Herculano','2002-08-29','M','98508147','Gracias a Dios','500','slhercu@','232425');
INSERT INTO ESTUDIANTE VALUES('0005010021080','0801200105000','Lionel Andres Messi','2001-05-26','M','96435134','Tegucigalpa','300','liomessi@','246messicr7') ; 

#insert candy
INSERT INTO ESTUDIANTE VALUES('6573139913080','0803199313756','Cristian Joel Avila Flores','1993-08-05','M','33529093','Tegucigalpa','600','avila08@','547849');
INSERT INTO ESTUDIANTE VALUES('7571289911080','0801199821757','Kathia Esperanza Espinoza Torres','1998-04-28','F','98329023','San Pedro Sula','600','esperanza28@','espi28');
INSERT INTO ESTUDIANTE VALUES('4653200021080','0801200023564','Sulma Abigail Espinoza Canaca','2000-12-24','F','98582130','Copan','600','sulmaacanaca23@','ojitos23');
INSERT INTO ESTUDIANTE VALUES('1874489913080','0803199844781','Allan Eduardo Alvarez Suarez','1998-11-24','M','96544122','San Pedro Sula','600','aealvarez14@','suarez15');
INSERT INTO ESTUDIANTE VALUES('7653210021080','0801200123567','Dailin Alexandra Ramirez Espinoza','1998-03-01','F','92454788','Tegucigalpa','600','alexandra_ramirez@','zoe25');
INSERT INTO ESTUDIANTE VALUES('3273100023080','0803200013723','Edilson Genaro Figueroa Ramirez','2000-08-04','M','33564596','Colon','600','figueroaedilson19@','124573');
INSERT INTO ESTUDIANTE VALUES('7531329913080','0803199231357','Mailin Maely Casco Aguilar','1992-04-30','F','98332546','Cortes','600','chelicasco04@','casco04');
INSERT INTO ESTUDIANTE VALUES('4211269911080','0801199621124','Mabis Patricia Martinez Luque','1996-11-03','F','98584681','Copan','600','patimartinez03@','pati03');
INSERT INTO ESTUDIANTE VALUES('1452420021080','0801200242541','Carlos Isai Gonzales Martinez','2002-08-26','M','96541236','San Pedro Sula','600','cahygonzales08@','carlitos08');
INSERT INTO ESTUDIANTE VALUES('7875249911080','0801199425787','Karen Gissela Gonzales Avila','1994-03-14','F','33694589','Tegucigalpa','600','gisselaavila03@','gatita03');
INSERT INTO ESTUDIANTE VALUES('745323991080','080199323547','Eli Manfredi Suarez Ortega','1993-08-04','M','33335477','Santa Barbara','600','manfredoaoartega19@','458412');
INSERT INTO ESTUDIANTE VALUES('7143229911080','0801199223417','Caren Noreli Madred Navarro','1992-04-30','F','96235874','tegucigalpa','600','norelisuarez04@','pitufina04');
INSERT INTO ESTUDIANTE VALUES('7891289911080','0801199821987','Seilin Daniela Diaz Nolasco ','1998-11-03','F','32354781','Copan','600','nolascodiaz03@','145872');
INSERT INTO ESTUDIANTE VALUES('1453230021080','0801200323541','Harry Daneri Andino Torres','2003-08-26','M','98745236','San Pedro Sula','600','daneritorresandino26@','andino26');
INSERT INTO ESTUDIANTE VALUES('7879869911080','0801199689787','Sara Yosselin Alvarez Torres','1996-03-14','F','33694560','La Ceiba','600','saratorres14@','gatita14');


## -------------------------------- insert matricula -----------------------------------------
# Cambien año y periodos a las matriculas

INSERT INTO MATRICULA VALUES('01',now(),'1','2021','9573199911080');
INSERT INTO MATRICULA VALUES('02',now(),'1','2021','9571200021080');
INSERT INTO MATRICULA VALUES('03',now(),'1','2021','5850000027081');
INSERT INTO MATRICULA VALUES('04',now(),'3','2017','5863289911080');
INSERT INTO MATRICULA VALUES('05',now(),'1','2020','5863510021080');
#Inserts de Galo
INSERT INTO MATRICULA VALUES('06',now(),'1','2018','3065010021080');
INSERT INTO MATRICULA VALUES('07',now(),'1','2019','1666000021080');
INSERT INTO MATRICULA VALUES('08',now(),'2','2020','1632099911080');
INSERT INTO MATRICULA VALUES('09',now(),'3','2021','2345030025050');
INSERT INTO MATRICULA VALUES('010',now(),'1','2021','6528089911080');
INSERT INTO MATRICULA VALUES('011',now(),'2','2021','8685080021080');
INSERT INTO MATRICULA VALUES('012',now(),'2','2015','8432099915040');
INSERT INTO MATRICULA VALUES('013',now(),'2','2018','9993000021080');
INSERT INTO MATRICULA VALUES('014',now(),'2','2019','5032000021080');
INSERT INTO MATRICULA VALUES('015',now(),'2','2020','5023040021080');
INSERT INTO MATRICULA VALUES('016',now(),'1','2017','5043076911060');

#candy
INSERT INTO MATRICULA VALUES('017',now(),'2','2021','6573139913080');
INSERT INTO MATRICULA VALUES('018',now(),'2','2021','7571289911080');
INSERT INTO MATRICULA VALUES('019',now(),'2','2021','4653200021080');
INSERT INTO MATRICULA VALUES('020',now(),'2','2021','1874489913080');
INSERT INTO MATRICULA VALUES('021',now(),'2','2021','7653210021080');
INSERT INTO MATRICULA VALUES('022',now(),'2','2021','3273100023080');
INSERT INTO MATRICULA VALUES('023',now(),'2','2021','7531329913080');
INSERT INTO MATRICULA VALUES('024',now(),'2','2021','4211269911080');
INSERT INTO MATRICULA VALUES('025',now(),'2','2021','1452420021080');
INSERT INTO MATRICULA VALUES('026',now(),'2','2021','7875249911080');
INSERT INTO MATRICULA VALUES('027',now(),'2','2021','745323991080');
INSERT INTO MATRICULA VALUES('028',now(),'2','2021','7143229911080');
INSERT INTO MATRICULA VALUES('029',now(),'2','2021','7891289911080');
INSERT INTO MATRICULA VALUES('030',now(),'2','2021','1453230021080');
INSERT INTO MATRICULA VALUES('031',now(),'2','2021','7879869911080');

#INSERT GALO 
INSERT INTO MATRICULA VALUES('032',now(),'3','2019','0005010021080') ;



##----------------------- INSERT CLASES -------------------------------------------
# cuando hagan insert el nombre de la clase no debe ser tan largo

#Inserts de Galo 
# hay que agregarle descripcion a la clase
#sistemas
INSERT INTO CLASE VALUES('IS-512','Sistemas Operativos I','Introduccion a los Sistemas Operativos','01','2120');
INSERT INTO CLASE VALUES('IS-720','Contabilidad','Inicios de Contabilidad','01','2120');
INSERT INTO CLASE VALUES('IS-411','Electronica','Comprension de circuitos','01','2120');
INSERT INTO CLASE VALUES('IS-510','Instalaciones Electricas','Analisis de instalaciones electricas','01','2120');
INSERT INTO CLASE VALUES('MM-110','Matematica I', 'Introduccion al algebra','01','2120') ;
INSERT INTO CLASE VALUES('SC-101','Sociologia', 'Conocimiento General','01','2120') ;
INSERT INTO CLASE VALUES('MM-111','Geometria y Trigonometria', 'Introduccion a gemotria plana','01','2120') ;
INSERT INTO CLASE VALUES('IS-501','Base de Datos I', 'Introduccion a bases de datos','01','2120') ;
INSERT INTO CLASE VALUES('IS-511','Redes de Datos', '','01','2120') ;
INSERT INTO CLASE VALUES('HH-101','Historia de Honduras', 'Conocimiento General','01','2120') ;
INSERT INTO CLASE VALUES('IS-410','Programacion_Orientada_Objetos', 'Fundamentos de POO','01','2120') ;
INSERT INTO CLASE VALUES('IS-412','Sistemas Operativos II', 'Seguimiento de SO 1','01','2120') ;
INSERT INTO CLASE VALUES('IS-601','Base de Datos II', 'Seguimiento de bases de datos 1','01','2120') ;
INSERT INTO CLASE VALUES('IS-603','Arquitectura de Computadoras', '','01','2120') ;
INSERT INTO CLASE VALUES('IS-513','Lenguajes de Programación', 'Introduccion a diversos lenguajes de programacion','01','2120') ;
INSERT INTO CLASE VALUES('IS-611','Redes de Datos II', '','01','2120') ;
INSERT INTO CLASE VALUES('IS-711','Diseño Digital', '','01','2120') ;
INSERT INTO CLASE VALUES('IS-602','Sistema de Información', '','01','2120')  ; 

#clases candy
#civil
INSERT INTO CLASE VALUES('IC-100','Introduccion a la Ing.Civil','','014','2121');
INSERT INTO CLASE VALUES('IC-302','Probabilidad Y Estadistica','','015','2121');
INSERT INTO CLASE VALUES('IC-361','Estadistica','','016','2121');
INSERT INTO CLASE VALUES('IC-200','Programacion I','','017','2121');
INSERT INTO CLASE VALUES('IC-350','Topografia I','','018','2121');
INSERT INTO CLASE VALUES('IC-303','Analisis Numerico','','019','2121');
INSERT INTO CLASE VALUES('IC-463','Resistencia de materiales I','','020','2121');
INSERT INTO CLASE VALUES('IC-362','Dinamica','','021','2121');
INSERT INTO CLASE VALUES('IC-471','Mecanica de Fluidos','','022','2121');
INSERT INTO CLASE VALUES('IC-451','Fluidos II','','023','2121');
INSERT INTO CLASE VALUES('IC-581','geologia','','024','2120');
INSERT INTO CLASE VALUES('IC-564','Resistencia Materiales II','','025','2121');
INSERT INTO CLASE VALUES('IC-573','Hidrologia I','','026','2121');
INSERT INTO CLASE VALUES('IC-572','Hidraulica Aplicada','','027','2121');
INSERT INTO CLASE VALUES('IC-691','Administracion General','','028','2121');

## --------------------------------------- insert docentes ------------------------------------
# varios docente deben estar en un departamento 
#2120 sistemas
#2121 civil
#2122 mecanica
#2123 matematicas
#2124 fisica
#2125 contaduria
#2126 admin empresas
#2127 medicina
#2128 terapia
# 2129 microbiologia
# 2130 derecho

# Docentes que pertenecen a ing sistemas
INSERT INTO DOCENTE VALUES('5850087917081','1807197800585','Rosa Suyapa Gonzalez Mondragon','1978-09-10','F','96536387','Tegucigalpa','2120','rosa@','1978');
INSERT INTO DOCENTE VALUES('7643217911080','0801197123467','Anibal Javier Izaguirre','1971-01-10','M','89536387','Tegucigalpa','2120','javier@','1971');
INSERT INTO DOCENTE VALUES('9573178917081','1807198713759','Yosselin Avila Rosales','1987-01-26','F','98763212','Olancho','2120','yosselin@rosales','rosales');
INSERT INTO DOCENTE VALUES('4568799911080','0801199978654','Karla Isabel Salinas','1999-10-05','F','88763212','Copan','2120','karla@','isabel');
INSERT INTO DOCENTE VALUES('7654129917081','1807199214567','Lesbia Brizeth Mendoza Juarez','1992-10-05','F','22260166','Yoro','2120','lesbia@','lesbia');
#faltan 5

# Docentes que pertencen a ing civil
INSERT INTO DOCENTE VALUES('3204098911080','0801198904023','Josue Manuel Canales Herrera','1989-06-10','M','98970436','Olancho','2121','boateng@','Zapato123')  ; 

#insert laboratorios
INSERT INTO LABORATORIO VALUES('6000','NO APLICA','','IC-691');





