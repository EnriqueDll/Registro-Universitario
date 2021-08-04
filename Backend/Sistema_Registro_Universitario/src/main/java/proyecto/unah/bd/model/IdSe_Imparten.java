package proyecto.unah.bd.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@JsonIgnoreProperties({"hibernateLazyInitializaer","handler"})
@Embeddable

public class IdSe_Imparten implements Serializable{
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	private String idEdificio;
	private String idSeccion;
	
	//Constructor vacio
	public IdSe_Imparten () {}
	
	//Constructor
	public IdSe_Imparten(String idEdificio, String idSeccion) {
		super();
		this.idEdificio = idEdificio;
		this.idSeccion = idSeccion;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof IdImparte) {
			IdImparte tmpid = (IdImparte)obj;
			if(this.idEdificio == tmpid.getNumDocente()
				&& this.idSeccion == tmpid.getIdSeccion()){
				return true;
			}else
				return false;
			
		}else return false;
	}
		
	//public int hashCode() {
			//return (int) this.numDocente.hashCode()+this.idSeccion;
		//}
	
	
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
