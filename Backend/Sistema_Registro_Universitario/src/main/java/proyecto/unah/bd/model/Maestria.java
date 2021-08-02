package proyecto.unah.bd.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table (name="maestria")

public class Maestria {
	
	//Atributos
	@Id
	public String idMaestria;
	public String nombreMaestria;
	public String orientacion;
	public String duracion;
	public String grado;
	public int    cantidadClases;
	public String descripcionMaestria;
	
	//Relacion con Facultad
	@ManyToOne
	@JoinColumn(name="idFacultad")
	@JsonBackReference
	public Facultad  facultad;
	
	//Constructor vacio
	public Maestria() {
		
	}
	
	//Constructor
	public Maestria(String idMaestria, String nombreMaestria, String orientacion, String duracion,String grado,int cantidadClases,
			String descripcionMaestria, Facultad facultad) {
		super();
		this.idMaestria = idMaestria;
		this.nombreMaestria = nombreMaestria;
		this.orientacion = orientacion;
		this.duracion = duracion;
		this.grado=grado;
		this.cantidadClases = cantidadClases;
		this.descripcionMaestria = descripcionMaestria;
		this.facultad = facultad;
	}
	
	//Gets & Sets
	public String getIdMaestria() {
		return idMaestria;
	}
	public void setIdMaestria(String idMaestria) {
		this.idMaestria = idMaestria;
	}
	public String getNombreMaestria() {
		return nombreMaestria;
	}
	public void setNombreMaestria(String nombreMaestria) {
		this.nombreMaestria = nombreMaestria;
	}
	public String getOrientacion() {
		return orientacion;
	}
	public void setOrientacion(String orientacion) {
		this.orientacion = orientacion;
	}
	public String getDuracion() {
		return duracion;
	}
	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}
	public int getCantidadClases() {
		return cantidadClases;
	}
	public void setCantidadClases(int cantidadClases) {
		this.cantidadClases = cantidadClases;
	}
	public String getDescripcionMaestria() {
		return descripcionMaestria;
	}
	public void setDescripcionMaestria(String descripcionMaestria) {
		this.descripcionMaestria = descripcionMaestria;
	}
	public String getGrado() {
		return grado;
	}
	public void setGrado(String grado) {
		this.grado = grado;
	}
}
