package proyecto.unah.bd.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import proyecto.unah.bd.model.Facultad;
import proyecto.unah.bd.repository.RepositoryFacultad;


@Service
public class ServiceFacultad {
	@Autowired 
    RepositoryFacultad repositoryfacultad;
	
	public void crearFacultad(Facultad facultad) {
		this.repositoryfacultad.save(facultad);
	}
	
	public List<Facultad> obtenerFacultades() {
		return this.repositoryfacultad.findAll();
	}
	
	public Optional<Facultad> buscarFacultad(String id) {
		return this.repositoryfacultad.findById(id);
	}

}
