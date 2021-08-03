package proyecto.unah.bd.model;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;


@Entity
@Table (name = "matricula")

public class Matricula {
	
	//Atributos
	@Id
	public String idMatricula;
	public LocalDate fechaHoraMatricula;
	public String periodo;
	public String anio;
	
	//Relacion con Estudiante
	@OneToOne(fetch = FetchType.EAGER) //quizas haga falta el mappedBy = "estudiante", podria ser Lazy en lugar de eager
	@JoinColumn(name = "numCuentaEstu")
	@JsonBackReference
	public Estudiante estudiante;
	
	//Relacion con Clase
	@OneToMany(mappedBy = "matricula", fetch = FetchType.EAGER)
	public List<Clase> clase;
	
	//Constructor vacio
	public Matricula() {
		
	}
	
	//Constructor
	public Matricula(String idMatricula, LocalDate fechaHoraMatricula, String periodo, String anio,
			Estudiante estudiante) {
		super();
		this.idMatricula = idMatricula;
		this.fechaHoraMatricula = fechaHoraMatricula;
		this.periodo = periodo;
		this.anio = anio;
		this.estudiante = estudiante;
	}

	//Gets & Sets
	public String getIdMatricula() {
		return idMatricula;
	}

	public void setIdMatricula(String idMatricula) {
		this.idMatricula = idMatricula;
	}

	public LocalDate getFechaHoraMatricula() {
		return fechaHoraMatricula;
	}

	public void setFechaHoraMatricula(LocalDate fechaHoraMatricula) {
		this.fechaHoraMatricula = fechaHoraMatricula;
	}

	public String getPeriodo() {
		return periodo;
	}

	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}

	public String getAnio() {
		return anio;
	}

	public void setAnio(String anio) {
		this.anio = anio;
	}
		
}
