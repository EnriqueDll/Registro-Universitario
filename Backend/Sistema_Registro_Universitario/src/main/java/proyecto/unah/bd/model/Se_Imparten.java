package proyecto.unah.bd.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties({"hibernateLazyInitializaer","handler"})
@Entity
@Table(name = "se_imparten")
@IdClass(IdImparte.class)

public class Se_Imparten implements Serializable{
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	
	//Atributos
	@Id
	private String idEdificio;
	@Id
	private String idSeccion;
	@Id
	private String numCuentaDocente;
	
	//Relacion con Edificio
	@ManyToOne
	@JoinColumn(name = "idEdificio", referencedColumnName = "idEdificio", insertable = false, updatable = false)
	@JsonBackReference
	private Edificio edificio;
	
	//Relacion con Seccion
	@ManyToOne
	@JoinColumn(name = "idSeccion", referencedColumnName = "idSeccion", 
	insertable = false, updatable = false)
	@JsonBackReference
	private Seccion seccion;
	
	//Constructor vacio
	public Se_Imparten () {
		
	}
	
	//Constructor
	public Se_Imparten(String idEdificio, String idSeccion, Edificio edificio, Seccion seccion) {
		super();
		this.idEdificio = idEdificio;
		this.idSeccion = idSeccion;
		this.edificio = edificio;
		this.seccion = seccion;
	}

	//Gets & Sets
	public String getIdEdificio() {
		return idEdificio;
	}

	public void setIdEdificio(String idEdificio) {
		this.idEdificio = idEdificio;
	}

	public String getIdSeccion() {
		return idSeccion;
	}

	public void setIdSeccion(String idSeccion) {
		this.idSeccion = idSeccion;
	}
}
