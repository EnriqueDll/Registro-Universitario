package proyecto.unah.bd.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table (name="seccion")

public class Seccion {
	
	//Atributos
	@Id
	public String idSeccion;
	public int    numSeccion;
	public String horaSeccion;
	public String diaSeccion;
	public int numEstudiantes;
	
	//Relacion con la Clase
	@ManyToOne
	@JoinColumn(name = "idClase")
	@JsonBackReference
	public Clase clase;
	
	//Relacion Con Laboratorio
	@ManyToOne
	@JoinColumn(name="idLab")
	@JsonBackReference
	public Laboratorio laboratorio;
	
	//Constructor Vacio
	public Seccion() {
		
	}
	
	//Constructor
	public Seccion(String idSeccion, int numSeccion, String horaSeccion,
			String diaSeccion, int numEstudiantes, Clase clase, Laboratorio laboratorio) {
		super();
		this.idSeccion = idSeccion;
		this.numSeccion = numSeccion;
		this.horaSeccion = horaSeccion;
		this.diaSeccion = diaSeccion;
		this.numEstudiantes = numEstudiantes;
		this.clase = clase;
		this.laboratorio = laboratorio;
	}
	
	//Gets & Sets
	public String getIdSeccion() {
		return idSeccion;
	}
	public void setIdSeccion(String idSeccion) {
		this.idSeccion = idSeccion;
	}
	public int getNumSeccion() {
		return numSeccion;
	}
	public void setNumSeccion(int numSeccion) {
		this.numSeccion = numSeccion;
	}
	public String getHoraSeccion() {
		return horaSeccion;
	}
	public void setHoraSeccion(String horaSeccion) {
		this.horaSeccion = horaSeccion;
	}
	public String getDiaSeccion() {
		return diaSeccion;
	}
	public void setDiaSeccion(String diaSeccion) {
		this.diaSeccion = diaSeccion;
	}
	public int getNumEstudiantes() {
		return numEstudiantes;
	}
	public void setNumEstudiantes(int numEstudiantes) {
		this.numEstudiantes = numEstudiantes;
	}
	
}
