package proyecto.unah.bd.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@JsonIgnoreProperties({"hibernateLazyInitializaer","handler"})
@Embeddable

public class IdImparte implements Serializable{
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
	private String numCuentaDocente;
	private String idSeccion;
	
	//Constructor vacio
	public IdImparte () {}
	
	//Constructor
	public IdImparte(String numCuentaDocente, String idSeccion) {
		super();
		this.numCuentaDocente = numCuentaDocente;
		this.idSeccion = idSeccion;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof IdImparte) {
			IdImparte tmpid = (IdImparte)obj;
			if(this.numCuentaDocente == tmpid.getNumCuentaDocente()
				&& this.idSeccion == tmpid.getIdSeccion()){
				return true;
			}else
				return false;
			
		}else return false;
	}
	
	/*
	public int hashCode() {
		return (int) this.numDocente.hashCode()+this.idSeccion;
	}
	*/
	
	//Gets & Sets
	public String getNumCuentaDocente() {
		return numCuentaDocente;
	}
	public void setNumCuentaDocente(String numCuentaDocente) {
		this.numCuentaDocente = numCuentaDocente;
	}
	public String getIdSeccion() {
		return idSeccion;
	}
	public void setIdSeccion(String idSeccion) {
		this.idSeccion = idSeccion;
	}
		
}
