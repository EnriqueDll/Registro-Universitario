USE REGISTRO_UNIVERSITARIO;

SELECT* FROM FACULTAD;
SELECT* FROM CARRERA;
SELECT* FROM MAESTRIA;
SELECT* FROM DEPARTAMENTO;
SELECT* FROM ESTUDIANTE;
SELECT* FROM MATRICULA;
SELECT* FROM CLASE;
SELECT* FROM DOCENTE;
SELECT* FROM laboratorio;
SELECT* FROM EDIFICIO;

SELECT* FROM SECCION;
SELECT* FROM SECCIONLAB;
#mostrar la carrera a la que pertenecen los estudiantes

SELECT D.nombreDepto, C.nombreCarrera FROM DEPARTAMENTO D INNER JOIN CARRERA C ON D.idCarrera=C.idCarrera;

SELECT E.nombreEstudiante,E.numCuentaEstu, C.nombreCarrera FROM ESTUDIANTE E INNER JOIN CARRERA C ON E.carrera=C.idCarrera ;
# estudiantes de carrera ing sistemas
SELECT E.nombreEstudiante,E.numCuentaEstu, C.nombreCarrera FROM ESTUDIANTE E INNER JOIN CARRERA C ON E.idCarrera=C.idCarrera WHERE C.nombreCarrera = 'Ingenieria en Sistemas';
# estudiantes de carrera ing civil
SELECT E.nombreEstudiante,E.numCuentaEstu, C.nombreCarrera FROM ESTUDIANTE E INNER JOIN CARRERA C ON E.idCarrera=C.idCarrera WHERE C.nombreCarrera = 'Ingenieria Civil';
#Listado de Docentes y a que depto pertenecen 
SELECT D.nombreDocente, D1.nombreDepto FROM DOCENTE D INNER JOIN DEPARTAMENTO D1 ON D.depto=D1.idDepto ORDER BY D.nombreDocente ASC;
#informacion de matricula
SELECT E.numCuentaEstu, E.nombreEstudiante, CLA.nombreClase, M.periodo, M.anio FROM MATRICULA M INNER JOIN ESTUDIANTE E ON M.cuentaEstudiante=E.numCuentaEstu INNER JOIN Clase CLA ON M.idMatricula=CLA.idMatricula;
#cant de estudiantes de sexo femenino
SELECT  COUNT(*) CANTIDAD FROM ESTUDIANTE E WHERE E.sexo='F';
#cant estudiantes sexo masculino
SELECT  COUNT(*) CANTIDAD FROM ESTUDIANTE E WHERE E.sexo='M';
#total de estudiantes
SELECT  COUNT(*) CANTIDAD FROM ESTUDIANTE E;
SELECT COUNT(*) CANTIDAD FROM MATRICULA M;
#lista de estudiantes de sexo F
SELECT E.nombreEstudiante, E.numCuentaEstu FROM ESTUDIANTE E WHERE E.sexo='F' ORDER BY E.nombreEstudiante ASC;
#lista de estudiantes sexo M
SELECT E.nombreEstudiante, E.numCuentaEstu FROM ESTUDIANTE E WHERE E.sexo='M' ORDER BY E.nombreEstudiante ASC;





