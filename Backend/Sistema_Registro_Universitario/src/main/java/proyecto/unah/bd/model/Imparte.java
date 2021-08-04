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
@Table(name = "imparte")
@IdClass(IdImparte.class)


public class Imparte implements Serializable{
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	
	//Atributos
	@Id
	private String numeroDocente;
	@Id
	private String idSeccion;
	
	//Relalcion
	@ManyToOne
	@JoinColumn(name = "numCuentaDocente", referencedColumnName = "numCuentaDocente",  insertable = false, updatable = false)
	@JsonBackReference
	private Docente docente;
	
	@ManyToMany
	@JoinColumn(name = "idSeccion", referencedColumnName = "idSeccion", insertable = false, updatable = false)
	@JsonBackReference
	private Seccion seccion;
	
	//COnstructor vacio
	public Imparte() {
		
	}
	
	//Constructor
	public Imparte(String numeroDocente, String idSeccion, Docente docente, Seccion seccion) {
		super();
		this.numeroDocente = numeroDocente;
		this.idSeccion = idSeccion;
		this.docente = docente;
		this.seccion = seccion;
	}

	//Gets $ Sets
	public String getNumeroDocente() {
		return numeroDocente;
	}

	public void setNumeroDocente(String numeroDocente) {
		this.numeroDocente = numeroDocente;
	}

	public String getIdSeccion() {
		return idSeccion;
	}

	public void setIdSeccion(String idSeccion) {
		this.idSeccion = idSeccion;
	}
}
