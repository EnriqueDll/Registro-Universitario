package proyecto.unah.bd.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import proyecto.unah.bd.model.Carrera;
import proyecto.unah.bd.repository.RepositoryCarrera;

@Service

public class ServiceCarrera {
	
	@Autowired
	RepositoryCarrera repositoryCarrera;
	
	public void crearCarrera(Carrera carrera) {
		this.repositoryCarrera.save(carrera);
	}
	
	public List<Carrera> obtenerCarrera(){
		return this.repositoryCarrera.findAll();
	}
	
	public Optional<Carrera> buscarCarrera(String id) {
		return this.repositoryCarrera.findById(id);
	}
	

}
