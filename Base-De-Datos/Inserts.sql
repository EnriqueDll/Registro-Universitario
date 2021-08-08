USE REGISTRO_UNIVERSITARIO;
## -----------------------  inserts de facultades ----------------------------
INSERT INTO FACULTAD VALUES(default,'Medicina',3); #id 1
INSERT INTO FACULTAD VALUES(default,'Ingenieria',3); #id 2
INSERT INTO FACULTAD VALUES(default,'Economia',2); # id 3
INSERT INTO FACULTAD VALUES(default,'Ciencias',2); # id 4
INSERT INTO FACULTAD VALUES(default,'Derecho',1); # id 5

## -------------------------- insert carreras -------------------------------------
# cada carrera pertenece a una facultad
#id 1,2,3,4,5,6,7,8,9,10,11
#FACULTAD MEDICINA 
INSERT INTO CARRERA VALUES('200','Medicina General','La Carrera de Medicina tiene como finalidad formar profesionales médicos con visión integral, capaces de detectar problemas de salud individual y comunitaria','68',default,'8 años','1');
INSERT INTO CARRERA VALUES(default,'Terapia Funcional','Forma profesionales capacitados para la atención de la persona con discapacidad mediante una preparación científica, técnica, humanista','52',default,'2 años y medio','1');
INSERT INTO CARRERA VALUES(default,'Microbiologia','Organizar, dirigir y desarrollar la formación ética, integral y holística de profesionales de la Microbiología, la investigación y la vinculación','62',default,'4 años','1');
# FACULTAD DE INGENIERIA
INSERT INTO CARRERA VALUES(default,'Ingenieria en Sistemas','La ingeniería de sistemas es un campo interdisciplinario de la ingeniería que permite estudiar y comprender la realidad','56',default,'5 años','2');
INSERT INTO CARRERA VALUES(default,'Ingenieria Mecanica','Esta disciplina estudia y perfecciona específicamente los principios de la termodinámica, trasferencia de calor, mecánica,vibraciones, mecánica clásica, entre otros campos.','62',default,'5 años','2');
INSERT INTO CARRERA VALUES(default,'Ingenieria Civil','La ingeniería civil es la disciplina de la ingeniería que emplea conocimientos de cálculo, mecánica, hidráulica y física para encargarse del diseño, construcción ','60',default,'5 años','2');
# FACULTAD ECONOMIA
INSERT INTO CARRERA VALUES(default,'Contaduria Publica','Es una disciplina de carácter científico fundamentada en una teoría específica, que a través de un proceso obtiene y comprueba información financiera','52',default,'5 años','3');
INSERT INTO CARRERA VALUES(default,'Administracion de Empresas','Es una disciplina de carácter científico fundamentada en una teoría específica, que a través de un proceso obtiene y comprueba información financiera','52',default,'5 años','3');
# FACULTAD CIENCIAS
INSERT INTO CARRERA VALUES(default,'Matematicas','Formación de profesionales matemáticos, capaces de transmitir conocimientos y participar en la solución de problemas a nivel nacional','54',default,'4 años','4');
INSERT INTO CARRERA VALUES(default,'Fisica','Tiene como misión la generación, desarrollo, integración y comunicación del saber dentro de las ciencias de la tierra','52',default,'5 años','4');
# FACULTAD DERECHO
INSERT INTO CARRERA VALUES(default,'Derecho','Tiene como finalidad generar profesionales expertos en leyes y codigos juridicos','64',default,'4 años','5');


## ---------------------------------- insert de maestrias ------------------------------------------------
INSERT INTO MAESTRIA VALUES(default,'Maestria en Ingenieria Ambiental','Desarrollo Sostenible',default,'2 años','34','La carrera de Ingeniería Ambiental es la encargada de estudiar los problemas ambientales de forma integrada, en todas las dimensiones: ecológicas, sociales, económicas y tecnológicas buscando el desarrollo sostenible.','2');
INSERT INTO MAESTRIA VALUES(default,'Maestria en Gestion de Empresas Coorporativas','Finanzas',default,'2 años','34',' La maestría proveerá al participante de conocimientos sólidos y herramientas necesarias para afrontar la competencia y los cambios en el mundo de los negocios','3');
INSERT INTO MAESTRIA VALUES(default,'Maestria en Administracion de Empresas','Finanzas',default,'2 años','34','Formula proyectos productivos para la pequeña,mediana y gran empresa. Conoce las herramientas básicas del proceso investigativo,que le permitan mantener una constante actitud de búsqueda de soluciones científicas a los problemas empresariales.','3');
INSERT INTO MAESTRIA VALUES(default,'Maestria en Ingenieria de la construccion y Gerencia de Proyectos','Ingenieria para el desarrollo',default,'2 años','34','Se enfoca “a suplir la necesidad de los ingenieros civiles o en construcción de estar capacitados en temáticas de actualidad','2');
INSERT INTO MAESTRIA VALUES(default,'Especialidad en Cirugia General','Salud',default,'5 años','68','Preparar a médicos en la Especialidad de Cirugía General de tal forma que al concluir el curso tengan la capacidad de establecer tanto el diagnóstico como el manejo de las enfermedades','1');
INSERT INTO MAESTRIA VALUES(default,'Maestria en Salud Publica','Salud',default,'5 años','68','La Maestría en Salud Pública ofrece una preparación integral con herramientas y competencias que permitan a los profesionales enfrentar los problemas de salud pública','1');

## -----------------------  insert departamento  --------------------------
# 500,501.....

INSERT INTO DEPARTAMENTO VALUES('500','Departamento de Ing.Sistemas','203'); #ing sistemas
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Ing.Civil','205'); # ing civil
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Ing.Mecanica','204'); # ing mecanica
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Matematicas','208');#matematicas
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Fisica','209'); #fisica
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Contaduria Publica','206'); #carreras de contaduria
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Admin de Empresas','207'); #carreras de admin empresas
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Medicina General','200'); #carreras de medicina
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Terapia','201'); # terapia
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Microbiologia','202'); #microbiologia
INSERT INTO DEPARTAMENTO VALUES(default,'Departamento de Derecho','210');#derecho


## ---------------------- A PARTIR DE AQUI HAY QUE HACER MAS INSERT------------------------
#fecha tiene el formato YYYY-MM-DD
# insetar dni Y TELEFONO sin guiones
# numero de cuenta es un dni invertido
# para cada estudiante que inserten deben insertar una matricula para ese estudiante 
 
 #carrera
 #200 medicina
 #201 terapia
 #202 microbiologia
 #203 sistemas
 #205 mecanica
 #206 civil
 #207 contaduria publica
 #208 admin de empresas
 #209 matematicas
 #210 fisica
 #211 derecho 
## ---------------------------- insert estudiantes -----------------------------------------------
#estudiantes de sistemas 203
INSERT INTO ESTUDIANTE VALUES('9573199911080','0801199913759','Andrea Michelle Calix Gonzalez','1999-05-25','F','33529093','Tegucigalpa','calix25@','232425','203');
INSERT INTO ESTUDIANTE VALUES('9571200021080','0801200021759','Eskarleth Lizeth Maradiaga Corrales','2000-10-09','F','98529093','Tegucigalpa','maradiagaeskar25@','eskar07','203');
INSERT INTO ESTUDIANTE VALUES('5850000027081','1807200000585','Thiago Isai Merlo','2000-12-06','M','98529883','Yoro','thiago6@','thiago','203');

#estudiantes de mecanica 204
INSERT INTO ESTUDIANTE VALUES('5863510021080','0801200153685','Jesua Raudales Miralda','2001-03-22','M','9352-9883','Tegucigalpa','jesua_raduales@','abril10','204');
INSERT INTO ESTUDIANTE VALUES('1666000021080','0801200006661','Esthefani Michell Alvarez Ordoñez','2000-07-04','F', '92504714' ,'Comayagua','esthefalv@','samantha123','204');
INSERT INTO ESTUDIANTE VALUES('1632099911080','0801199902361','Axel Galo Soto','1999-05-01','M','97502563','San Pedro Sula','axelger@','copetin500','204');

#estudiantes de civil 205
INSERT INTO ESTUDIANTE VALUES('8685080021080','0801200805868','Lorena Maria Soto Andino','2003-07-15','F','96303027','Yoro','lorenasoto@','jesu12304','205');
INSERT INTO ESTUDIANTE VALUES('8432099915040','0405199902348','Santos Benigno Galo Gonzales','1999-05-22','M','99905433','San Pedro Sula','santosbenigno@','cumplimientos05660','205');
INSERT INTO ESTUDIANTE VALUES('9993000021080','0801200003999','Lorena Francisca Mejia Funez','2003-02-26','F','95803222','Tegucigalpa','lomejifun@','franciaparis!43','205');

# estudiantes derecho 210
INSERT INTO ESTUDIANTE VALUES('5043076911060','0601196703405','Samuel Alexander Lopez Herculano','2002-08-29','M','98508147','Gracias a Dios','slhercu@','232425','210');
INSERT INTO ESTUDIANTE VALUES('0005010021080','0801200105000','Lionel Andres Messi','2001-05-26','M','96435134','Tegucigalpa','liomessi@','246messicr7','210') ; 
INSERT INTO ESTUDIANTE VALUES('6573139913080','0803199313756','Cristian Joel Avila Flores','1993-08-05','M','33529093','Tegucigalpa','avila08@','547849','210');

#estudiantes medicina 200
INSERT INTO ESTUDIANTE VALUES('1874489913080','0803199844781','Allan Eduardo Alvarez Suarez','1998-11-24','M','96544122','San Pedro Sula','aealvarez14@','suarez15','200');
INSERT INTO ESTUDIANTE VALUES('7653210021080','0801200123567','Dailin Alexandra Ramirez Espinoza','1998-03-01','F','92454788','Tegucigalpa','alexandra_ramirez@','zoe25','200');
INSERT INTO ESTUDIANTE VALUES('3273100023080','0803200013723','Edilson Genaro Figueroa Ramirez','2000-08-04','M','33564596','Colon','figueroaedilson19@','124573','200');

#estudiantes terapia 201
INSERT INTO ESTUDIANTE VALUES('1452420021080','0801200242541','Carlos Isai Gonzales Martinez','2002-08-26','M','96541236','San Pedro Sula','cahygonzales08@','carlitos08','201');
INSERT INTO ESTUDIANTE VALUES('7875249911080','0801199425787','Karen Gissela Gonzales Avila','1994-03-14','F','33694589','Tegucigalpa','gisselaavila03@','gatita03','201');
INSERT INTO ESTUDIANTE VALUES('745323991080','080199323547','Eli Manfredi Suarez Ortega','1993-08-04','M','33335477','Santa Barbara','manfredoaoartega19@','458412','201');

#estudiante de microbiologia 202
INSERT INTO ESTUDIANTE VALUES('1453230021080','0801200323541','Harry Daneri Andino Torres','2003-08-26','M','98745236','San Pedro Sula','daneritorresandino26@','andino26','202');
INSERT INTO ESTUDIANTE VALUES('7879869911080','0801199689787','Sara Yosselin Alvarez Torres','1996-03-14','F','33694560','La Ceiba','saratorres14@','gatita14','202');
INSERT INTO ESTUDIANTE VALUES('2345099915070','0705199905432','Nicolas Emanuel Martinez Sosa','1999-03-14','M','98534123','Copan','emanuel@','erenjeager','202') ; 

# estudiante de admin empresas 207
INSERT INTO ESTUDIANTE VALUES('1001098910560','0650198901001','Elon Rogan Herculano Soto','1989-10-12','M','33459843','Atlantida','elonm@','collegue123','207');
INSERT INTO ESTUDIANTE VALUES('3423079915070','0705199703243','Raquel Hernandez Canales Messi','1997-04-02','F','98562399','Gracias a Dios','raqhe@','manuelneuer2222','207');
INSERT INTO ESTUDIANTE VALUES('2856920025070','0705200296582','Dennis Oscar Benito Suarez','2002-10-10','M','92979423','Colon','dennisos@','christian123',207);

#estudiantes contaduria 206
INSERT INTO ESTUDIANTE VALUES('5432100021080','0801200012345','Jon Snow Barrientos Khan','2000-10-12','M','33404643','El Paraiso','jonwsw@','rocketleague','206');
INSERT INTO ESTUDIANTE VALUES('4500040025090','0905200400054','Tyrion Lannister Mertzy Sun','2004-08-13','M','97644643','El Paraiso','tyrion@','rocketleague235','206');
INSERT INTO ESTUDIANTE VALUES('6205299911080','0801199925026','Ron Swanson Galo Alvarez','1999-03-21','M','99906996','El Paraiso','ronsw@','rocketleague24601','206');

# estudiantes matematicas 208
INSERT INTO ESTUDIANTE VALUES('2057098911080','0801198907502','Britta Gillian Perry','1989-12-09','M','99664872','La Paz', 'britt2@','quamt21','208');
INSERT INTO ESTUDIANTE VALUES('3598750028980','0898200578953','Gareth Bale Ronaldo Suarez','2005-03-05','M','98508080','La Paz', 'cr7me@','barcelon23','208');
INSERT INTO ESTUDIANTE VALUES('3409120021080','0801200219043','Skyler White Garcia Torres','2002-03-05','F','88904584','Ocotepeque', 'skyler23@','walterjr2@','208');

# estudiantes fisica 209
INSERT INTO ESTUDIANTE VALUES('5789100025090','0905200019875','Pierce Hawtorne Chris','2000-04-21','M','99380529','Santa Barbara', 'pierhe@','racist023','209');
INSERT INTO ESTUDIANTE VALUES('0468910026090','0906200198640','Shirley Bennet Canales','2001-10-09','F','96730451','Santa Barbara', 'shuiely@','jesus12','209');
INSERT INTO ESTUDIANTE VALUES('1235088918090','0908198805321 ','Dean Pelton Baldur','1988-05-01','M','32985629','Santa Barbara', 'deanP@','je1234f','209');




##INSERT INTO ESTUDIANTE VALUES('9800500021080','0801200050089','Juan Carlos Calix Cerrato','2000-11-09','M','97383357','Valle', 'calixpic@','erenjnuclear','201');
##INSERT INTO ESTUDIANTE VALUES('7005079911080','0801199705007','Tokio Nelia Samantha ','1997-05-09','F','94591639','Valle', 'tokn@','1234kilomMe ','201');
##INSERT INTO ESTUDIANTE VALUES('7809029912590','0952199209087','Mike EaurthMauntrant','1992-06-01','M','39938787','Olancho', 'mik@','metanolfafa','202');
##INSERT INTO ESTUDIANTE VALUES('4699039915070','0705199309964','Lidia Quadert Dayle','1993-06-01','F','96300958','Olancho', 'LID1@','metanol124','202');
##INSERT INTO ESTUDIANTE VALUES('4709098915060','0605198909074','Jeffrey Hartwell Winger Ruber','1989-04-02','F','96303030','El Paraiso', 'jeffwing@','community1','208');
##INSERT INTO ESTUDIANTE VALUES('5000530021080','0801200350005','Annie Edison Love Gentile','1989-04-02','F','96303030','La Paz', 'annied@','community2','208');
##INSERT INTO ESTUDIANTE VALUES('5432100025090','0905200012345','Hank Asac Shcrader ','2000-06-03','M','39930273','Santa Barbara', 'hankASAC@','lakeof90','209');
##INSERT INTO ESTUDIANTE VALUES('6669010029090','0909200109666','Marie Curie Line','2001-07-15','F','96930273','Santa Barbara', 'marie22@','atreus12','209');
##INSERT INTO ESTUDIANTE VALUES('5709010025070','0705200109075','Walter Emilio Hartwell White','2001-06-11','M','96539273','El Paraiso', 'walter234@','breaking34','206');
##INSERT INTO ESTUDIANTE VALUES('9265079911080','0801199705629','Troy Abed Nadir','1999-06-11','M','9239 273','El Paraiso', 'troyab34@','commhty12','206');
##INSERT INTO ESTUDIANTE VALUES('7005030021090','0901200305007','Aries Terron Bueso Ruber','2003-04-02','M','95392363','Gracias a Dios','ariester@','lionelregil2','207');
##INSERT INTO ESTUDIANTE VALUES('7009099915070','0705199909007','Troy Barnes Gambino ','1999-11-23','M','99841030','La Paz', 'troybar@','community3','207');
##INSERT INTO ESTUDIANTE VALUES('8432100025060','0605200012348','Maria Jose Licona Murillo','2000-09-29','F','96541256','San Pedro Sula','majolic@','gutscaska','202');
##INSERT INTO ESTUDIANTE VALUES('4306078911080','0801198706034','Linda Puerto Canales Mejia','1987-06-03','F','98509999','Tegucigalpa','lpuerto@','miraflor19026','202');
##INSERT INTO ESTUDIANTE VALUES('7143229911080','0801199223417','Caren Noreli Madred Navarro','1992-04-30','F','96235874','tegucigalpa','norelisuarez04@','pitufina04','201');
##INSERT INTO ESTUDIANTE VALUES('7891289911080','0801199821987','Seilin Daniela Diaz Nolasco ','1998-11-03','F','32354781','Copan','nolascodiaz03@','145872','201');
##INSERT INTO ESTUDIANTE VALUES('7531329913080','0803199231357','Mailin Maely Casco Aguilar','1992-04-30','F','98332546','Cortes','chelicasco04@','casco04','200');
##INSERT INTO ESTUDIANTE VALUES('4211269911080','0801199621124','Mabis Patricia Martinez Luque','1996-11-03','F','98584681','Copan','patimartinez03@','pati03','200');
##INSERT INTO ESTUDIANTE VALUES('7571289911080','0801199821757','Kathia Esperanza Espinoza Torres','1998-04-28','F','98329023','San Pedro Sula','esperanza28@','espi28','210');
##INSERT INTO ESTUDIANTE VALUES('4653200021080','0801200023564','Sulma Abigail Espinoza Canaca','2000-12-24','F','98582130','Copan','sulmaacanaca23@','ojitos23','210');
##INSERT INTO ESTUDIANTE VALUES('5032000021080','0801200002305','Alessandro Bustillo Flores','2004-09-24','M','92000432','Yoro','alessbusti@','adriana2462!.','205');
##INSERT INTO ESTUDIANTE VALUES('5023040021080','0801200403205','Gustavo Andres Barahona','1999-05-25','F','33529093','Tegucigalpa','calix25@','232425','205');
##INSERT INTO ESTUDIANTE VALUES('2345030025050','0505200305432','Fernando Enrique Garcia','1996-05-23','M','92305433','Tegucigalpa','ferenrq@','cocomax123','204');
##INSERT INTO ESTUDIANTE VALUES('6528089911080','0801199808256','Oscar Ariel Galo Soto','1996-05-23', 'M','90985263','Ocotepeque','oscargsoto@','incorrecta23','204');
##INSERT INTO ESTUDIANTE VALUES('5863289911080','0801199823685','Aaron Isaac Raudales Valle','1998-11-14','M','34529883','San Pedro Sula','aaronraduales@','raudales13','203');
##INSERT INTO ESTUDIANTE VALUES('3065010021080','0801200105603','Alex Daniel Galo Soto','2001-03-03','M','98508147','Tegucigalpa','alexgalo@','griffith124','203') ; 

## -------------------------------- insert matricula -----------------------------------------
# Cambien año y periodos a las matriculas
#sistemas si
INSERT INTO MATRICULA VALUES('100',default,'1','2021','9573199911080');#100
INSERT INTO MATRICULA VALUES(default,default,'1','2021','9571200021080');#101
INSERT INTO MATRICULA VALUES(default,default,'1','2021','5850000027081');#102
#civil si
INSERT INTO MATRICULA VALUES(default,default,'1','2018','8685080021080');#103
INSERT INTO MATRICULA VALUES(default,default,'1','2019','8432099915040');#104
INSERT INTO MATRICULA VALUES(default,default,'2','2020','9993000021080');#105
#mecanica si
INSERT INTO MATRICULA VALUES(default,default,'2','2021','5863510021080');#106
INSERT INTO MATRICULA VALUES(default,default,'2','2015','0005010021080');#107
INSERT INTO MATRICULA VALUES(default,default,'2','2018','1632099911080');#108
#matematicas si
INSERT INTO MATRICULA VALUES(default,default,'1','2017','2057098911080'); #109
INSERT INTO MATRICULA VALUES(default,default,'2','2021','3598750028980');
INSERT INTO MATRICULA VALUES(default,default,'2','2021','3409120021080');
#contaduria si
INSERT INTO MATRICULA VALUES(default,default,'2','2021','5432100021080');
INSERT INTO MATRICULA VALUES(default,default,'2','2021','4500040025090');
INSERT INTO MATRICULA VALUES(default,default,'2','2021','6205299911080');
#admin empresas
INSERT INTO MATRICULA VALUES(default,default,'2','2021','1001098910560');
INSERT INTO MATRICULA VALUES(default,default,'2','2021','3423079915070');
INSERT INTO MATRICULA VALUES(default,default,'2','2021','2856920025070');
#derecho
INSERT INTO MATRICULA VALUES(default,default,'2','2021','5043076911060');
INSERT INTO MATRICULA VALUES(default,default,'3','2019','0005010021080') ;
INSERT INTO MATRICULA VALUES(default,default,'3','2018','6573139913080') ;
#medicina
INSERT INTO MATRICULA VALUES(default,default,'3','2019','1874489913080') ;
INSERT INTO MATRICULA VALUES(default,default,'2','2021','7653210021080') ;
INSERT INTO MATRICULA VALUES(default,default,'3','2018','3273100023080') ;
#microbiologia
INSERT INTO MATRICULA VALUES(default,default,'2','2017','3908969919080') ;
INSERT INTO MATRICULA VALUES(default,default,'1','2020','0255259915070') ;
INSERT INTO MATRICULA VALUES(default,default,'3','2015','2345099915070') ;
#terapia
INSERT INTO MATRICULA VALUES(default,default,'1','2016','1452420021080') ;
INSERT INTO MATRICULA VALUES(default,default,'2','2019','7875249911080') ;
INSERT INTO MATRICULA VALUES(default,default,'3','2018','745323991080') ;
#fisica
INSERT INTO MATRICULA VALUES(default,default,'1','2013','5789100025090') ;
INSERT INTO MATRICULA VALUES(default,default,'2','2018','0468910026090') ;
INSERT INTO MATRICULA VALUES(default,default,'3','2017','1235088918090') ;

##INSERT INTO MATRICULA VALUES(default,default,'2','2021','4653200021080');
##INSERT INTO MATRICULA VALUES(default,default,'2','2021','1874489913080');
##INSERT INTO MATRICULA VALUES(default,default,'2','2016','5432100025090') ;
##INSERT INTO MATRICULA VALUES(default,default,'1','2015','6669010029090') ;
#INSERT INTO MATRICULA VALUES(default,default,'1','2012','3908969919080') ;
#INSERT INTO MATRICULA VALUES(default,default,'2','2013','0255259915070') ;
#INSERT INTO MATRICULA VALUES(default,default,'3','2014','0580249915070') ;
##INSERT INTO MATRICULA VALUES(default,default,'3','2015','4699039915070') ;
##INSERT INTO MATRICULA VALUES(default,default,'2','2013','7809029912590') ;
##INSERT INTO MATRICULA VALUES(default,default,'1','2017','4699039915070') ;
##INSERT INTO MATRICULA VALUES(default,default,'2','2015','4709098915060') ;
##INSERT INTO MATRICULA VALUES(default,default,'1','2019','5000530021080') ;
#INSERT INTO MATRICULA VALUES(default,default,'1','2014','9965010025090') ;
#INSERT INTO MATRICULA VALUES(default,default,'2','2015','9166000025090') ;
#INSERT INTO MATRICULA VALUES(default,default,'3','2016','6789049915090') ;
##INSERT INTO MATRICULA VALUES(default,default,'2','2017','9800500021080') ;
#INSERT INTO MATRICULA VALUES(default,default,'1','2018','7005079911080') ;
##INSERT INTO MATRICULA VALUES(default,default,'2','2013','5432100021080') ;
##INSERT INTO MATRICULA VALUES(default,default,'1','2018','4500040025090') ;
##INSERT INTO MATRICULA VALUES(default,default,'2','2016','6205299911080') ;
##INSERT INTO MATRICULA VALUES(default,default,'3','2011','5709010025070') ;
##INSERT INTO MATRICULA VALUES(default,default,'2','2017','9265079911080') ;
##INSERT INTO MATRICULA VALUES(default,default,'2','2021','8432100025060') ;
##INSERT INTO MATRICULA VALUES(default,default,'1','2019','4306078911080') ;
##INSERT INTO MATRICULA VALUES(default,default,'2','2021','7891289911080');
##INSERT INTO MATRICULA VALUES(default,default,'2','2021','1453230021080');
##INSERT INTO MATRICULA VALUES(default,default,'2','2021','4211269911080');
##INSERT INTO MATRICULA VALUES(default,default,'2','2021','1452420021080');
##INSERT INTO MATRICULA VALUES(default,default,'2','2021','4211269911080');
##INSERT INTO MATRICULA VALUES(default,default,'2','2021','1452420021080');
##INSERT INTO MATRICULA VALUES(default,default,'2','2019','5032000021080');
##INSERT INTO MATRICULA VALUES(default,default,'2','2020','5023040021080');
##INSERT INTO MATRICULA VALUES(default,default,'3','2017','5863289911080');
##INSERT INTO MATRICULA VALUES(default,default,'1','2020','5863510021080');
##INSERT INTO MATRICULA VALUES(default,default,'3','2021','2345030025050');
##INSERT INTO MATRICULA VALUES(default,default,'1','2021','6528089911080');

##----------------------- INSERT CLASES -------------------------------------------
# cuando hagan insert el nombre de la clase no debe ser tan largo
# hay que agregarle descripcion a la clase
# ir cambiando los id de matricula se can contando desde el 100,101,102....
#500 sistemas////COMPLETO
#501 civil ///Completo
#502 mecanica ////COMPLETO
#503 matematicas //Completo
#504 fisica
#505 contaduria 
#507 medicina //Completo
#506 admin empresas
#508 terapia //Completo
#509 microbiologia //Completo
#510 derecho

#sistemas
#estudiante 1
INSERT INTO CLASE VALUES('IS-518','Sistemas Operativos I','Introduccion a los Sistemas Operativos','100','500');
INSERT INTO CLASE VALUES('IS-411','Electronica','Comprension de circuitos','100','500');
#estudiante 2
INSERT INTO CLASE VALUES('IS-510','Instalaciones Electricas','Analisis de instalaciones electricas','101','500');
INSERT INTO CLASE VALUES('IS-110','Matematica I', 'Introduccion al algebra','101','500') ;
INSERT INTO CLASE VALUES('IS-111','Geometria y Trigonometria', 'Introduccion a gemotria plana','101','500') ;
# estu 3
INSERT INTO CLASE VALUES('IS-501','Base de Datos I', 'Introduccion a bases de datos','102','500') ;
INSERT INTO CLASE VALUES('IS-511','Redes de Datos', 'Conceptos Generales sobre Redes','102','500') ;
INSERT INTO CLASE VALUES('IS-410','Programacion_Orientada_Objetos', 'Fundamentos de POO','102','500') ;

#INSERT INTO CLASE VALUES('IS-412','Sistemas Operativos II', 'Seguimiento de SO 1','104','500') ;
#INSERT INTO CLASE VALUES('IS-601','Base de Datos II', 'Seguimiento de bases de datos 1','104','500') ;
#INSERT INTO CLASE VALUES('IS-603','Arquitectura de Computadoras', 'Introduccion General','105','500') ;
#INSERT INTO CLASE VALUES('IS-513','Lenguajes de Programación', 'Introduccion a diversos lenguajes de programacion','105','500') ;
#INSERT INTO CLASE VALUES('IS-611','Redes de Datos II', 'Continuacion de Redes I','105','500') ;
#INSERT INTO CLASE VALUES('IS-711','Diseño Digital', 'Conceptos principales de diseño','106','500') ;
#INSERT INTO CLASE VALUES('IS-602','Sistema de Información', 'Introduccion general','106','500')  ; 

#civil
#1
INSERT INTO CLASE VALUES('IC-301','Introduccion a la Ing.Civil','Introduccion general','103','501');
INSERT INTO CLASE VALUES('IC-309','Probabilidad Y Estadistica','Conceptos de probabilidades','103','501');
INSERT INTO CLASE VALUES('IC-320','Estadistica','Orientacion a estadistica','103','501');
#2
INSERT INTO CLASE VALUES('IC-321','Programacion I','Conceptos generales de programacion','104','501');
INSERT INTO CLASE VALUES('IC-322','Topografia I','Introduccion general','104','501');
#3
INSERT INTO CLASE VALUES('IC-323','Analisis Numerico','Area cientifico-matematica','105','501');
INSERT INTO CLASE VALUES('IC-324','Resistencia de materiales I','Analisis de materiales','105','501');

#mecanica 
#1
INSERT INTO CLASE VALUES('IM-325','Termodinamica 1','Area cientifica','106','502');
INSERT INTO CLASE VALUES('IM-326','Metalurgia','Area Cientifica','106','502');
INSERT INTO CLASE VALUES('IM-331','Termodinamica 1','Introduccion','106','502');
#2
INSERT INTO CLASE VALUES('IM-327','Fluidos I','Continuacion','107','502');
INSERT INTO CLASE VALUES('IM-328','Analisis Numerico','Introduccion general','107','502');
#3
INSERT INTO CLASE VALUES('IM-329','Mecanica de Materiales ','Continuacion de Resistencias 1','108','502');
INSERT INTO CLASE VALUES('IM-330','Maquina 1','Introduccion','108','502');
INSERT INTO CLASE VALUES('IM-332','Manufactura 1','Conocimiento en area economica','108','502');

#matematicas : Llave Foranea 503
#Fisica : 504
#contaduria :505 
#admin:506

#Secciones de Medicina  :507
#1
INSERT INTO CLASE VALUES('FS-210','Biofisica','Introduccion a biofisica','121','507');
INSERT INTO CLASE VALUES('QQ-111','Quimica Medica','Introduccion a Quimica','121','507'); 
INSERT INTO CLASE VALUES('FO-101 ','Fisiologia','Introduccion a Fisiologia','121','507');
#2
INSERT INTO CLASE VALUES('BQ-113 ','Bioquímica','Introduccion a Bioquimica','122','507');
INSERT INTO CLASE VALUES('PS-110 ','Psicología Médica','Introduccion a Psicologia','122','507');
INSERT INTO CLASE VALUES('SP-21 ','Salud Pública I','Introduccion a Salud Publica','122','507');
#3
INSERT INTO CLASE VALUES('MB-610 ','Microbiología','Introduccion a Microbiologia','123','507');
INSERT INTO CLASE VALUES('BL-134 ','Genética','Conceptos Generales de Genetica','123','507');
INSERT INTO CLASE VALUES('PA-100','Patologia','Introduccion a Patologia','123','507');

#Microbiologia ;:509
INSERT INTO CLASE VALUES('MB-024','Química Biológica','Introduccion a Quimica Biologica','124','509');
INSERT INTO CLASE VALUES('QQ-113','Química Organica I','Introduccion a Quimica Organica I','124','509');
INSERT INTO CLASE VALUES('QQ-114','Química Analitica I','Introduccion a Quimica Analitica','124','509');

INSERT INTO CLASE VALUES('MB-066',' Bacteriologia Medica   ','Introduccion A Bacteriologia','125','509');
INSERT INTO CLASE VALUES('MB-076',' Protozoología   ','Introduccion A Protozoologia','125','509');
INSERT INTO CLASE VALUES('AI-111  ',' Histologia Normal ','Introduccion A Histologia','125','509');

INSERT INTO CLASE VALUES('MB-087 ',' Seminario I','Introduccion A Seminario I ','126','509');
INSERT INTO CLASE VALUES('MB-0797',' Micologia Medica   ','Introduccion A Micologia','126','509');
INSERT INTO CLASE VALUES('MB-107  ',' Helmintología ','Introduccion A Helmintologia','126','509');


#terapia  :508
#1
INSERT INTO CLASE VALUES('TFA-100  ','Anatomía Funcional ','Introduccion a Anatomia','127','508');
INSERT INTO CLASE VALUES('TFN-101  ','Fisiologia NeuroMuscular ','Introduccion a Fisiologia','127','508');
INSERT INTO CLASE VALUES('TFF-101  ','Fisioterapia ','Introduccion a Fisioterapia','127','508');
#2
INSERT INTO CLASE VALUES('TFG-101','Gimnasia Teraupetica ','Introduccion a Terapia de Gimnasia','128','508');
INSERT INTO CLASE VALUES('FF-206','Ética ','Introduccion a Etica','128','508');
INSERT INTO CLASE VALUES('MR-022','Evaluacion Terapeutica II ','Evaluacion Terapeutica','128','508');
#3
INSERT INTO CLASE VALUES('TFN-102','Neurología para TF  ','Introduccion a Neurologia','129','508');
INSERT INTO CLASE VALUES('FM-101','Masaje  ','Introduccion al masaje','129','508');
INSERT INTO CLASE VALUES('TFT-101','Terapia Ocupacional I ','Terapia Ocupacional','129','508');






#micro :509
#derecho :510
# FALTAN


# CONTA, ADMIN, MATE, ----------- CANDY
## inserts CLASES 
##MATEMATICA
#1
INSERT INTO CLASE VALUES('MM-430','Geometria Analitica','Introduccion Geometria','109','503');
INSERT INTO CLASE VALUES('MM-408','Calculo III','Continuacion de Calculo II','109','503'); 
INSERT INTO CLASE VALUES('MM-418','Progamacion II','Continuacion de Programacion I','109','503');
 #2
INSERT INTO CLASE VALUES('MM-410','Calculo I','Introduccion a los Calculos','110','503');
INSERT INTO CLASE VALUES('MM-438','Matematica Discreta','introduccion a la Matematica Dicreta','110','503'); 
INSERT INTO CLASE VALUES('MM-428','Variable compleja',' Introduccion a lo Complejo','110','503');
 #3
INSERT INTO CLASE VALUES('MM-403','Analisis Matematico I','Introduccion  Analisis','111','503');
INSERT INTO CLASE VALUES('MM-447','Programacion II','Continuacion de Programacion I','111','503'); 
 
##CONTADURIA
#1
INSERT INTO CLASE VALUES('CF-014','Contabilidad I','Introduccion a la Contabilidad','112','505');
INSERT INTO CLASE VALUES('CF-408','calculo III','Continuacion del Calculo II','112','505'); 
INSERT INTO CLASE VALUES('CF-415','Progamacion II','Continuacion de Programacion I','112','505');
#2
INSERT INTO CLASE VALUES('CF-011','Macrieconomia I','Introduccion a la Macroeconomia','113','505');
INSERT INTO CLASE VALUES('CF-400','Ingles I','Introduccion al Ingles ','113','505'); 
INSERT INTO CLASE VALUES('CF-412','Derecho Mercantil','Introduccion al Derecho','113','505');
#3
INSERT INTO CLASE VALUES('CF-111','Ingles II','Continuacion del Ingles I','114','505');
INSERT INTO CLASE VALUES('CF-420','Administracion I','Introduccion a la Administracion','114','505'); 

##ADMINISTRACION
#1
INSERT INTO CLASE VALUES('AD-014','Metodos Cuantitativos I','Introduccion a los Metodos','115','506');
INSERT INTO CLASE VALUES('AD-408','Principios de Economia ','Introduccion a la Economia','115','506'); 
INSERT INTO CLASE VALUES('AD-415','Computacion I','Conocimientos Basicos en  Computacion','115','506');
#2
INSERT INTO CLASE VALUES('AD-011','Filosofia','Introduccion a la Filososfia','116','506');
INSERT INTO CLASE VALUES('AD-400','Ingles I','Introduccion al Ingles ','116','506'); 
INSERT INTO CLASE VALUES('AD-412','Empreasas I','Introduccion a Empresas','116','506');
#3
INSERT INTO CLASE VALUES('AD-111','Computacion II','Continuacion de Computacion I','117','506');
INSERT INTO CLASE VALUES('AD-420','Metodos Cuantitativos II','Seguimiento de Metodos I','117','506'); 

## inserts SECCION
INSERT INTO SECCION VALUES(default,'MM-430','2','7:00','LMXJV','15');
iNSERT INTO SECCION VALUES(default,'MM-408','3','8:00','LMXV','10');
INSERT INTO SECCION VALUES(default,'MM-418','4','9:00','LMXJ','20');
INSERT INTO SECCION VALUES(default,'MM-410','5','7:00','LMXJV','25');
INSERT INTO SECCION VALUES(default,'MM-438','6','8:00','LMXJV','10');
INSERT INTO SECCION VALUES(default,'MM-428','7','10:00','LMJV','30');
INSERT INTO SECCION VALUES(default,'MM-403','8','7:00','LMXJV','10');
INSERT INTO SECCION VALUES(default,'MM-447','9','8:00','LMXJV','35');

INSERT INTO SECCION VALUES(default,'CF-014','10','8:00','LMXJV','10');
INSERT INTO SECCION VALUES(default,'CF-408','11','7:00','LMXJV','15');
INSERT INTO SECCION VALUES(default,'CF-415','12','10:00','LMJV','20');
INSERT INTO SECCION VALUES(default,'CF-011','13','7:00','LMXJV','25');
INSERT INTO SECCION VALUES(default,'CF-400','14','9:00','LMXJV','30');
INSERT INTO SECCION VALUES(default,'CF-412','15','10:00','LMXJV','35');
INSERT INTO SECCION VALUES(default,'CF-111','16','7:00','LMXJ','40');
INSERT INTO SECCION VALUES(default,'CF-420','17','9:00','LMXJV','45');

INSERT INTO SECCION VALUES(default,'AD-014','18','7:00','MXJV','20');
INSERT INTO SECCION VALUES(default,'AD-408','19','6:00','LMXJV','10');
INSERT INTO SECCION VALUES(default,'AD-415','20','9:00','LMXJV','30');
INSERT INTO SECCION VALUES(default,'AD-011','21','8:00','LXJV','10');
INSERT INTO SECCION VALUES(default,'AD-400','22','7:00','LMXJV','40');
INSERT INTO SECCION VALUES(default,'AD-412','23','10:00','LMXJV','10');
INSERT INTO SECCION VALUES(default,'AD-111','24','9:00','LMXV','50');
INSERT INTO SECCION VALUES(default,'AD-420','25','8:00','LMXJV','10');



#Secciones de Medicina 
	#1
INSERT INTO SECCION VALUES(default,'FS-210','26','8:00','LMXJV','15');
INSERT INTO SECCION VALUES(default,'QQ-111','27','9:00','LMXJV','23');
INSERT INTO SECCION VALUES(default,'FO-101','28','10:00','LMXJV','45');
	#2
INSERT INTO SECCION VALUES(default,'BQ-113','29','1:00','LMXJV','26');
INSERT INTO SECCION VALUES(default,'PS-110','30','2:00','LMXJV','13');
INSERT INTO SECCION VALUES(default,'SP-21','31','3:00','LMXJV','11');
	#3
INSERT INTO SECCION VALUES(default,'MB-610','32','2:00','LMXJV','15');
INSERT INTO SECCION VALUES(default,'BL-134','33','3:00','LMXJV','16');
INSERT INTO SECCION VALUES(default,'PA-100','34','4:00','LMXJV','19');

#Secciones de Terapia
	#1
INSERT INTO SECCION VALUES(default,'TFA-100','35','3:00','LMXJV','15');
INSERT INTO SECCION VALUES(default,'TFN-101','36','4:00','LMXJV','15');
INSERT INTO SECCION VALUES(default,'TFF-101','37','6:00','LMXJV','12');
	#2
INSERT INTO SECCION VALUES(default,'TFG-101','38','8:00','LMXJV','16');
INSERT INTO SECCION VALUES(default,'FF-206','39','9:00','LMXJV','19');
INSERT INTO SECCION VALUES(default,'MR-022','40','10:00','LMXJV','15');
	#3
INSERT INTO SECCION VALUES(default,'TFN-102','41','9:00','LMXJV','15');
INSERT INTO SECCION VALUES(default,'FM-101','42','10:00','LMXJV','14');
INSERT INTO SECCION VALUES(default,'TFT-101','43','11:00','LMXJV','13');

#Secciones de Microbiologia 
	#1
INSERT INTO SECCION VALUES(default,'MB-024','44','3:00','LMXJV','10');
INSERT INTO SECCION VALUES(default,'QQ-113','45','4:00','LMXJV','11');
INSERT INTO SECCION VALUES(default,'QQ-114','46','5:00','LMXJV','12');

	#2
INSERT INTO SECCION VALUES(default,'MB-066','47','3:00','LMXJV','13');
INSERT INTO SECCION VALUES(default,'MB-076','48','4:00','LMXJV','14');
INSERT INTO SECCION VALUES(default,'A1-111','49','5:00','LMXJV','15');

	#3
INSERT INTO SECCION VALUES(default,'MB-087','50','3:00','LMXJV','17');
INSERT INTO SECCION VALUES(default,'MB-0797','51','4:00','LMXJV','18');
INSERT INTO SECCION VALUES(default,'MB-107','52','5:00','LMXJV','19');


    
    

# FISICA,DERECHO ---------CALIX




## --------------------------------------- insert docentes ------------------------------------
# 10 DOCENTES POR DEPARTAMENTO
#500 sistemas////COMPLETO
#501 civil ///Completo
#502 mecanica ////COMPLETO
#503 matematicas //Completo
#504 fisica //Completo
#505 contaduria //Completo
#507 medicina //completo
#506 admin empresas //completo
#508 terapia ///completo
#509 microbiologia ///completo
#510 derecho//completo

# Docentes que pertenecen a ing sistemas 500
INSERT INTO DOCENTE VALUES('5850087917081','1807197800585','Rosa Suyapa Gonzalez Mondragon','1978-09-10','F','96536387','Tegucigalpa','rosa@','1978','500');
INSERT INTO DOCENTE VALUES('7643217911080','0801197123467','Anibal Javier Izaguirre','1971-01-10','M','89536387','Tegucigalpa','javier@','1971','500');
INSERT INTO DOCENTE VALUES('9573178917081','1807198713759','Yosselin Avila Rosales','1987-01-26','F','98763212','Olancho','yosselin@rosales','rosales','500');
# Docentes que pertencen a ing civil 501
INSERT INTO DOCENTE VALUES('3204098911080','0801198904023','Josue Manuel Canales Herrera','1989-06-10','M','98970436','Olancho','boateng@','Zapato123','501')  ; 
INSERT INTO DOCENTE VALUES('4568799911080','0801199978654','Karla Isabel Salinas','1999-10-05','F','88763212','Copan','karla@','isabel','501');
INSERT INTO DOCENTE VALUES('7654129917081','1807199214567','Lesbia Brizeth Mendoza Juarez','1992-10-05','F','22260166','Yoro','lesbia@','lesbia','501');
#Docentes de ing mecanica
INSERT INTO DOCENTE VALUES('9573119911080','0801199113759','Jessica Carolina Carranza','1991-09-28','F','88765543','Tegucigalpa','jessica@','2324','502');
INSERT INTO DOCENTE VALUES('9573188911080','0801198813759','Fabricio Alejandro Galindo Gonzalez','1988-11-28','M','85765543','Tegucigalpa','galindo@','4524','502');
INSERT INTO DOCENTE VALUES('5134207911080','0801197024315','Patricia Isabel Corrales','1970-02-23','F','96725343','San Pedro Sula','pati@','pati23','502');
#Docentes de Matematica
INSERT INTO DOCENTE VALUES('3450087911080','0801197800543','Enrique Jose Gomez','1978-08-21','M','San Pedro Sula','22230765','enrique@','1224','503');
INSERT INTO DOCENTE VALUES('5431239911080','0801199321345','Darwin Saul Pineda','1993-09-23','M','Tegucigalpa','2234873','saul@','saul','503');
INSERT INTO DOCENTE VALUES('8790238917081','1807198320978','Laura Mariel Lopez Aguirre','1983-12-25','F','Tegucigalpa','22260165','laura@','laura','503');
#Docentes de Fisica
INSERT INTO DOCENTE VALUES('7659067911080','0801197609567','Hermes Daniel Castro','1976-04-21','M','Tegucigalpa','98975567','daniel@','dani','504');
INSERT INTO DOCENTE VALUES('3478967911080','0801197698743','Erika Mariela Quezada','1976-05-30','F','San Pedro Sula','98765543','erika@','erika','504');
INSERT INTO DOCENTE VALUES('7894086911080','0801196804987','Fredy Gerardo Espinoza','1968-09-21','M','87654321','Ceiba','fedy@','f0921','504');
#Docentes de Contaduria 
INSERT INTO DOCENTE VALUES('5694086917081','1807196804965','Dina Gabriela Rodriguez Calix','1968-09-21','F','98654321','Tela','gaby@','gaby21','505');
INSERT INTO DOCENTE VALUES('5697856917081','1807196587965','Gerardo David Varela Barrientos','1965-05-07','M','87224321','Tegucigalpa','davidgerardo@','david07','505');
INSERT INTO DOCENTE VALUES('8934207911080','0801197024398','Gustavo Andres Baquedano','1970-01-07','M','87424522','Tela','tavoandres@','andres','505');
#Docentes de admin empresas
INSERT INTO DOCENTE VALUES('8934239911080','0801199324398','Guillermo Antonio Salgado','1993-08-07','M','99124521','Ceiba','guille@','antonio08','506');
INSERT INTO DOCENTE VALUES('4313239911080','0801199323134','Lucia Elizabeth Cruz','1993-06-20','F','22239876','Trujillo','luci@','junio21','506');
INSERT INTO DOCENTE VALUES('9323209911080','0801199023239','Maria Jose Espinoza Varela','1990-12-20','F','96542133','Tegucigalpa','majo@','mercurio21','506');
# Docentes de Derecho 
INSERT INTO DOCENTE VALUES('5432010021080','0801200102345','Antonio Felipe Santome Suarez','2001-09-04','M','97642912','Olancho','anto@','juenaes9563','510');
INSERT INTO DOCENTE VALUES('9601099914090','0904199901069','Laporta Ramos Jose Fuentes','1990-10-06','M','98999952','Ceiba','anto@','juenaes9563','510');
INSERT INTO DOCENTE VALUES('4560017914001','1004197100654','Eduardo Francisco Lopez','1971-11-21','M','89765423','Tegucigalpa','francisco@','francisco','510');
# Docentes Medicina
INSERT INTO DOCENTE VALUES('6543288911080','0801198823456','Ana Gabriela Ramos Espinal','1988-04-14','F','98786543','San Pedro Sula','ana@','ana1988','507');
INSERT INTO DOCENTE VALUES('6573177911080','0801197713756','Marco Antonio Ramos Castro','1977-05-29','M','88764321','Tela','marcos@','castro29','507');
INSERT INTO DOCENTE VALUES('5342118917081','1807198112435','Fernando Jose Gonzalez Amador','1981-03-30','M','9876320','Trujillo','jose@','jose22','507');
#Docentes Terapia
INSERT INTO DOCENTE VALUES('6870037911080','0801197300786','Azucena Michell Rodriguez','1973-06-23','F','88765423','Tegucigalpa','michell@','rodri23','508');
INSERT INTO DOCENTE VALUES('6970137911080','0801197310796','Karina Isabell Canaca','1973-07-19','F','98760423','Ceiba','isabell@','canaca29','508');
INSERT INTO DOCENTE VALUES('6970117911081','1801197110796','Miguel Adolfo Solis','1971-06-21','M','38760413','Trujillo','adolfo@','solis','508');
# Docentes Microbiologia
INSERT INTO DOCENTE VALUES('2380067911080','0801197600832','Javier Emilio Cruz','1976-04-19','M','98760410','Tegucigalpa','cruz@','mercurio21','509');
INSERT INTO DOCENTE VALUES('0080067917081','1807197600800','Henry David Valladares Osorio','1976-01-22','M','90760412','Tegucigalpa','osorio@','pluton21','509');
INSERT INTO DOCENTE VALUES('0343207911040','0401197023430','Saida Cristina Aguilar','1970-10-11','F','84012445','Ceiba','saida@','jupiter','509');


#insert laboratorios
# no necesariamente todas las clases deben tener laboratorio
#con tres lab por carrera suficiente
# agregar descripcion a los laboratorios
#lab de ing civil
INSERT INTO LABORATORIO VALUES('6000','Intro a Ing,Civil','','IC-301');
INSERT INTO LABORATORIO VALUES('6001','Probabilidad y Estadistica','','IC-309');
INSERT INTO LABORATORIO VALUES('6002','Topografia','','IC-322');
# lab de ing mecanica
# lab medicina
# microbiologia 

#SECCIONES DE LAB
INSERT INTO SECCIONLAB VALUES('900','6001','1','14:00','LMX','10');





# SECCIONES DE LAS CLASES

	#Secciones de Sistema
INSERT INTO SECCION VALUES('700','IS-518','1','7:00','LMXJV','10');




#Seccion de Medicina
	













#edificios
INSERT INTO EDIFICIO VALUES('1','200','100','Disponible');
INSERT INTO EDIFICIO VALUES(default,'210','110','Ocupada');
INSERT INTO EDIFICIO VALUES(default,'215','115','Disponible');
INSERT INTO EDIFICIO VALUES(default,'220','120','Ocupada');
INSERT INTO EDIFICIO VALUES(default,'300','111','Disponible');
INSERT INTO EDIFICIO VALUES(default,'304','101','Disponible');
INSERT INTO EDIFICIO VALUES(default,'305','109','Ocupada');
INSERT INTO EDIFICIO VALUES(default,'306','220','Ocupada');
INSERT INTO EDIFICIO VALUES(default,'105','306','Disponible');
INSERT INTO EDIFICIO VALUES(default,'110','308','Disponible');
INSERT INTO EDIFICIO VALUES(default,'303','208','Ocupada');



