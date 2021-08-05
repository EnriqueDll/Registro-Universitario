package proyecto.unah.bd.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import proyecto.unah.bd.model.Carrera;
import proyecto.unah.bd.model.Clase;
import proyecto.unah.bd.model.Departamento;
import proyecto.unah.bd.model.Docente;
import proyecto.unah.bd.model.Edificio;
import proyecto.unah.bd.model.Estudiante;
import proyecto.unah.bd.model.Facultad;
import proyecto.unah.bd.model.Laboratorio;
import proyecto.unah.bd.model.Maestria;
import proyecto.unah.bd.model.Matricula;
import proyecto.unah.bd.model.Seccion;
import proyecto.unah.bd.service.ServiceCarrera;
import proyecto.unah.bd.service.ServiceClase;
import proyecto.unah.bd.service.ServiceDepartamento;
import proyecto.unah.bd.service.ServiceDocente;
import proyecto.unah.bd.service.ServiceEdificio;
import proyecto.unah.bd.service.ServiceEstudiante;
import proyecto.unah.bd.service.ServiceFacultad;
import proyecto.unah.bd.service.ServiceLaboratorio;
import proyecto.unah.bd.service.ServiceMaestria;
import proyecto.unah.bd.service.ServiceMatricula;
import proyecto.unah.bd.service.ServiceSeccion;


/**
 * 
 * @author: Varios
 *
 *@Controller
 */

@RestController

public class Controlador {
	
	@Autowired
	ServiceEstudiante serviceestudiante;
	
	@Autowired
	ServiceMatricula servicematricula;
	
	@Autowired
	ServiceClase serviceclase;
	
	@Autowired
	ServiceCarrera servicecarrera;
	
	@Autowired
	ServiceSeccion serviceseccion;
	
	@Autowired
	ServiceLaboratorio servicelaboratorio;
	
	@Autowired
	ServiceEdificio serviceedificio;
	
	@Autowired
	ServiceFacultad servicefacultad;
	
	@Autowired
	ServiceMaestria servicemaestria;
	
	@Autowired
	ServiceDocente servicedocente;
	
	@Autowired
	ServiceDepartamento servicedepartamento;
	
	
	//-------------------------------Pagina Inicial-------------------------------
	
	//====================================================================
	// Estudiante
	//====================================================================
	
	@GetMapping ("/estudiante/crearEstudiante")
	public String registrarEstudiante() {
		return "RegistroEstudiante";
	}
	
	@RequestMapping (value = "/estudiante/crearEstudiante", method = RequestMethod.POST)
	public Estudiante crearEstudiante(@RequestParam(name = "Dni") String dni,
								  @RequestParam(name = "Nombre") String nombreEstudiante,
								  @RequestParam(name = "FechaNacimiento") @DateTimeFormat(iso = ISO.DATE) LocalDate fechaNac,
								  @RequestParam (name = "Sexo") char sexo,
								  @RequestParam (name = "Telefono") String telefono,
								  @RequestParam (name = "CiudadOrigen") String ciudadOrigen,
								  @RequestParam (name = "CorreoElectronico") String correoElectronico,
								  @RequestParam (name = "Constraseña") String contrasenia,
								  @RequestParam (name = "Carrera") String carrera) {
		
		//Le damos vuelta al Dni para que ese sea su numero de cuenta
		String numCuenta = "";
		for (int i = dni.length()-1; i >= 0; i--)
			  numCuenta = numCuenta + dni.charAt(i);
		
		//Buscar la carrera
		Optional <Carrera> carrera3 = this.servicecarrera.buscarCarrera(carrera);
		
		Estudiante estudiante1 = new Estudiante(numCuenta, dni, nombreEstudiante, fechaNac, sexo, telefono, ciudadOrigen, correoElectronico, contrasenia, carrera3.get());
		this.serviceestudiante.crearEstudiante(estudiante1);
		
		//return "RegistroEstudiante";
		return estudiante1;
	}
	
	@RequestMapping (value = "/estudiante/listaEstudiante", method = RequestMethod.POST)
	public List<Estudiante> listadoEstudiante(){
		return this.serviceestudiante.obtenerEstudiante();
	}
	
	@RequestMapping(value ="/estudiante/buscarEstudiante",method=RequestMethod.GET)
	public Optional<Estudiante> buscarEstudiante(@RequestParam(name = "id") String numCuenta) {
		return this.serviceestudiante.buscarEstudiante(numCuenta);
	}
	
	//====================================================================
	// MATRICULA
	//====================================================================
	@GetMapping ("/matricula/crearMatricula")
	public String registrarMatricula() {
		return "RegistroMatricula";
	}
	
	@RequestMapping (value = "/matricula/crearMatricula", method = RequestMethod.POST)
	public Matricula crearMatricula(@RequestParam(name = "Id") String idMatricula,
								  @RequestParam(name = "FechaMatricula") @DateTimeFormat(iso = ISO.DATE) LocalDate fechaMatri,
								  @RequestParam (name = "Periodo") String periodo,
								  @RequestParam (name = "Año") String anio,
								  @RequestParam (name = "Estudiante") String numCuenta) {
			
		//Buscar el Estudiante
		Optional <Estudiante> estudiante2 = this.serviceestudiante.buscarEstudiante(numCuenta);
		
		Matricula matricula1 = new Matricula(idMatricula, fechaMatri, periodo, anio, estudiante2.get());
		this.servicematricula.crearMatricula(matricula1);
		
		//return "RegistroEstudiante";
		return matricula1;
	}
	
	@RequestMapping (value = "/matricula/listaMatricula", method = RequestMethod.POST)
	public List<Matricula> listadoMatricula(){
		return this.servicematricula.obtenerMatricula();
	}
	
	@RequestMapping(value ="/matricula/buscarMatricula",method=RequestMethod.GET)
	public Optional<Matricula> buscarMatricula(@RequestParam(name = "id") String idMatricula) {
		return this.servicematricula.buscarMatricula(idMatricula);
	}
	
	
	//====================================================================
	// CLASE
	//====================================================================
	
	@GetMapping ("/clase/crearClase")
	public String registrarClase() {
		return "RegistroClase";
	}
	
	@RequestMapping (value = "/clase/crearClase", method = RequestMethod.POST)
	public Clase crearClase(@RequestParam(name = "Id") String idClase,
							
							@RequestParam (name = "NombreClase") String nombreClase,
							@RequestParam (name = "Descripcion") String descripcion,
							@RequestParam (name = "Matricula") String idMatricula,
							@RequestParam (name ="Departamento")String departamento1) {
			
		//Buscar la matricula
		Optional <Matricula> matricula1 = this.servicematricula.buscarMatricula(idMatricula);
		Optional <Departamento> departamento = this.servicedepartamento.buscarDepartamento(departamento1);
		
		Clase clase1 = new Clase(idClase, nombreClase, descripcion, matricula1.get(), departamento.get());
		this.serviceclase.crearClase(clase1);
		
		//return "RegistroEstudiante";
		return clase1;
	}
	
	@RequestMapping (value = "/clase/listaClase", method = RequestMethod.POST)
	public List<Clase> listadoClase(){
		return this.serviceclase.obtenerClase();
	}
	
	@RequestMapping(value ="/clase/buscarClase",method=RequestMethod.GET)
	public Optional<Clase> buscarClase(@RequestParam(name = "id") String idClase) {
		return this.serviceclase.buscarClase(idClase);
	}
	
	//====================================================================
	// CARRERA
	//====================================================================
	
		
			@RequestMapping(value ="/carrera/crearCarrera",method=RequestMethod.GET)
			public Carrera crearCarrera(@RequestParam(name = "id") String idCarrera,
				                          @RequestParam(name = "nombre") String nombreCarrera,
				                          @RequestParam(name = "desripcion") String descripcionCarrera,
				                          @RequestParam(name = "numero de asignaturas") int numAsignaturas,
				                          @RequestParam(name = "gardo") String grado,
				                          @RequestParam(name = "duracion") String duracionCarrera,
				                          @RequestParam(name = "facultad") String facultadCarrera){
				
			Optional<Facultad> facultad1 = this.servicefacultad.buscarFacultad(facultadCarrera);
			
			Carrera carrera = new Carrera( idCarrera, nombreCarrera,descripcionCarrera,numAsignaturas,grado,duracionCarrera, facultad1.get());
			this.servicecarrera.crearCarrera(carrera);
			return carrera;    
				
			}
			
			@RequestMapping(value ="/carrera/listaCarrera",method=RequestMethod.GET)
			public List<Carrera>listadoCarrera() {	
				return this.servicecarrera.obtenerCarrera();
			}
			
			@RequestMapping(value ="/carrera/buscarCarrera",method=RequestMethod.GET)
			public Optional<Carrera> buscarCarrera(@RequestParam(name = "id") String idCarrera) {
				return this.servicecarrera.buscarCarrera( idCarrera);
			}
			
			//====================================================================
			// FACULTAD
	       //====================================================================
	
		
			@RequestMapping(value ="/facultad/crearFacultad",method=RequestMethod.GET)
			public Facultad crearFacultad(@RequestParam(name = "id") String idFacultad,
				                          @RequestParam(name = "nombre") String nombreFacultad,
				                          @RequestParam(name = "numero de carreras") int numCarreras){
				Facultad facultad = new Facultad( idFacultad, nombreFacultad,numCarreras);
				this.servicefacultad.crearFacultad(facultad);
				return facultad;
				
				}
			
			@RequestMapping(value ="/facultad/listaFacultad",method=RequestMethod.GET)
			public List<Facultad>listadoFacultad() {	
				return this.servicefacultad.obtenerFacultades();
			}
			
			@RequestMapping(value ="/facultad/buscarFacultad",method=RequestMethod.GET)
			public Optional<Facultad> buscarFacultad(@RequestParam(name = "id") String idFacultad) {
				return this.servicefacultad.buscarFacultad( idFacultad);
			}
			
			
			//====================================================================
			// MAESTRIA
			//====================================================================
	
		
			@RequestMapping(value ="/maestria/crearMaestria",method=RequestMethod.GET)
			public Maestria crearMaestria(@RequestParam(name = "id") String idMaestria,
				                          @RequestParam(name = "nombre") String nombreMaestria,
				                          @RequestParam(name = "orientacion") String orientacion,
				                          @RequestParam(name = "grado") String grado,
				                          @RequestParam(name = "duracion") String duracion,
				                          @RequestParam(name = "cantidad de clases") int cantidadClases,
			                              @RequestParam(name = "descripcion") String descripcionMaestria,
			                              @RequestParam(name = "facultad") String idFacultad) {
				
				Optional<Facultad> facultad2 = this.servicefacultad.buscarFacultad(idFacultad);
				Maestria maestria= new Maestria( idMaestria, nombreMaestria,orientacion,grado,duracion,cantidadClases,descripcionMaestria, facultad2.get());
				this.servicemaestria.crearMaestria(maestria);
				return maestria;
				
				}
			
			@RequestMapping(value ="/maestria/listaMaestria",method=RequestMethod.GET)
			public List<Maestria>listadoMaestria() {	
				return this.servicemaestria.obtenerMaestrias();
			}
			
			@RequestMapping(value ="/maestria/buscarMaestria",method=RequestMethod.GET)
			public Optional<Maestria> buscarMestria(@RequestParam(name = "id") String idMaestria) {
				return this.servicemaestria.buscarMaestria( idMaestria);
			}
			
			
			//=====================================================================
			                        //SECCION
			//======================================================================
			@RequestMapping (value = "/seccion/crearSeccion",method=RequestMethod.GET)
			public Seccion crearSeccion(@RequestParam(name = "id") String idSeccion,
					                    @RequestParam(name = "clase") String clase,
					                    @RequestParam(name = "laboratorio") String laboratorio,
					                    @RequestParam(name = "numero") int numSeccion,
					                    @RequestParam(name = "hora") String horaSeccion,
					                    @RequestParam(name = "dia") String diaSeccion,
					                    @RequestParam(name = "estudiantes") int numEstudiantes) {
				
				Optional <Clase> clase4 = this.serviceclase.buscarClase(clase);
				Optional <Laboratorio> laboratorio1 = this.servicelaboratorio.buscarlaboratorio(laboratorio);
						
				Seccion seccion = new Seccion(idSeccion,numSeccion,horaSeccion,diaSeccion,numEstudiantes, clase4.get(), laboratorio1.get());
				this.serviceseccion.crearSeccion(seccion);
				return seccion;
			}
			
			@RequestMapping(value = "/seccion/listarSeccion",method=RequestMethod.GET)
			public List<Seccion> listarSecciones(){
				return this.serviceseccion.obtenerSecciones();
			}
			@RequestMapping(value ="/seccion/buscarSeccion",method=RequestMethod.GET)
			public Optional<Seccion> buscarSeccion(@RequestParam(name = "id") String idSeccion) {
				return this.serviceseccion.buscarSeccion( idSeccion);
			}
			
			
			//=======================================================================
			                          //LABORATORIO
			//======================================================================
			@RequestMapping (value = "/laboratorio/crearLaboratorio",method=RequestMethod.GET)
			public Laboratorio crearLaboratorio(@RequestParam(name = "id") String idLab,
					                 @RequestParam(name = "nombre") String nombreLab,
					                 @RequestParam(name = "descripcion") String descripcion,
					                 @RequestParam(name = "clase") String clase) {
				
				Optional <Clase> clase2 = this.serviceclase.buscarClase(clase);
				Laboratorio laboratorio = new Laboratorio(idLab,nombreLab,descripcion, clase2.get());
				this.servicelaboratorio.crearLaboratorio(laboratorio);
				return laboratorio;
			}
			
			@RequestMapping(value = "/laboratorio/listarLaboratorio",method=RequestMethod.GET)
			public List<Laboratorio> listarLaboratorios(){
				return this.servicelaboratorio.obtenerlaboratorios();
			}
			@RequestMapping(value ="/laboratorio/buscarLaboratorio",method=RequestMethod.GET)
			public Optional<Laboratorio> buscarLaboratorio(@RequestParam(name = "id") String idLab) {
				return this.servicelaboratorio.buscarlaboratorio( idLab);
				
			}
			
			//=======================================================================
                  //EDIFICIO
             //======================================================================
			
             @RequestMapping(value ="/edificio/crearEdificio",method=RequestMethod.POST)
             public Edificio crearEdificio(@RequestParam(name = "id") String idEdificio,
	                          @RequestParam(name = "aula") int aula,
	                          @RequestParam(name = "aulaLab") int aulaLab,
	                          @RequestParam(name = "estado") String estado){
	          Edificio edificio = new Edificio( idEdificio,aula,aulaLab,estado);
	          this.serviceedificio.crearEdificio(edificio);
	          return edificio;
	
             }
             
             @RequestMapping(value ="/edificio/listaEdificio",method=RequestMethod.GET)
 			  public List<Edificio> listaredificios(){
 				return this.serviceedificio.obtenerEdificios();
             }

               @RequestMapping(value ="/edificio/buscarEdificio",method=RequestMethod.GET)
               public Optional<Edificio> buscarEdificio(@RequestParam(name = "id") String idEdificio) {
	           return this.serviceedificio.buscarEdificio( idEdificio);
	           
               }
		
		//====================================================================
		// Docente
		//====================================================================
	
		@RequestMapping(value = "/docente/crearDocente", method = RequestMethod.GET)
		public Docente crearDocente(@RequestParam(name = "Ciudad de Origen") String ciudadOrigen,
				                    @RequestParam(name = "Contraseña") String contrasenia,
				                    @RequestParam(name = "Correo Electronico") String Correo_Electronico,
				                    @RequestParam(name = "Identificacion") String dniD,
				                    @RequestParam(name = "Fecha de Nacimiento") @DateTimeFormat(iso = ISO.DATE) LocalDate fechaNacD,
				                    @RequestParam(name = "Nombre ") String nombre,
				                    @RequestParam(name = "numero de Cuenta del docente") String numeroCuentaDocente,
				                    @RequestParam(name = "Sexo") String sexo,//cambiar a char
				                    @RequestParam(name = "Telefono") String telefono,
				                    @RequestParam(name = "Departamento") String departamentoD) {
		
		//Buscar Departamento
		Optional <Departamento> departamento3 = this.servicedepartamento.buscarDepartamento(departamentoD);
		
		//Numero de cuenta Docente
		String numCuentaD = "";
		for (int i = dniD.length()-1; i >= 0; i--)
			  numCuentaD = numCuentaD + dniD.charAt(i);
		
		Docente docente = new Docente (numCuentaD, dniD, nombre, fechaNacD,sexo,telefono,ciudadOrigen,Correo_Electronico,contrasenia,departamento3.get());
		this.servicedocente.crearDocente(docente);
		return docente;
		
		}
		
		@RequestMapping(value = "/docente/listaDocente", method = RequestMethod.GET)
		public List<Docente> listadoDocente() {
			return this.servicedocente.obtenerTodosDocentes();
		}
}
		
