package proyecto.unah.bd.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import proyecto.unah.bd.model.Departamento;
import proyecto.unah.bd.repository.RepositoryDepartamento;

@Service

public class ServiceDepartamento {
	
	@Autowired
	RepositoryDepartamento repositoryDepartamento;
	
	public void crearDepartamento(Departamento departamento) {
		this.repositoryDepartamento.save(departamento);
	}
	
	public List<Departamento> obtenerDepartamento(){
		return this.repositoryDepartamento.findAll();
	}
	
	public Optional<Departamento> buscarDepartamento(String id) {
		return this.repositoryDepartamento.findById(id);
	}

}
