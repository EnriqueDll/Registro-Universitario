package proyecto.unah.bd.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import proyecto.unah.bd.model.Matricula;
import proyecto.unah.bd.repository.RepositoryMatricula;

public class ServiceMatricula {
	
	@Autowired
	RepositoryMatricula repositoryMatricula;
	
	public void crearMatricula(Matricula matricula) {
		this.repositoryMatricula.save(matricula);
	}
	
	public List<Matricula> obtenerMatricula(){
		return this.repositoryMatricula.findAll();
	}
	
	public Optional<Matricula> buscarMatricula(String id) {
		return this.repositoryMatricula.findById(id);
	}

}
