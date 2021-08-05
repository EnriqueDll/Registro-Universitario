package proyecto.unah.bd.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name="facultad")

public class Facultad {
	
	//Atributos
	@Id
	public String idFacultad;
	public String nombreFacultad;
	public int numCarreras;
	
	//Relacion con carrera
	@OneToMany(mappedBy="facultad",fetch=FetchType.EAGER)
	private List<Carrera> carrera;
	
	//Maestria
	@OneToMany(mappedBy="facultad",fetch=FetchType.EAGER)
	private List<Maestria> maestria;
	
	//Constructor Vacio
	public Facultad() {
		
	}
	
	//Constructor
	public Facultad(String idFacultad, String nombreFacultad, int numCarreras) {
		super();
		this.idFacultad = idFacultad;
		this.nombreFacultad = nombreFacultad;
		this.numCarreras = numCarreras;
	}
	
	//Gets & Sets
	public String getIdFacultad() {
		return idFacultad;
	}
	public void setIdFacultad(String idFacultad) {
		this.idFacultad = idFacultad;
	}
	public String getNombreFacultad() {
		return nombreFacultad;
	}
	public void setNombreFacultad(String nombreFacultad) {
		this.nombreFacultad = nombreFacultad;
	}
	public int getNumCarreras() {
		return numCarreras;
	}
	public void setNumCarreras(int numCarreras) {
		this.numCarreras = numCarreras;
	}
	
}
