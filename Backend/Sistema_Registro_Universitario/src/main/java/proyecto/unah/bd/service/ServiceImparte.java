package proyecto.unah.bd.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import proyecto.unah.bd.model.IdImparte;
import proyecto.unah.bd.model.Imparte;
import proyecto.unah.bd.repository.RepositoryImparte;

@Service
public class ServiceImparte {

	@Autowired
	RepositoryImparte repositoryImparte;
	
	public void crearImparte(Imparte imparte) {
		this.repositoryImparte.save(imparte);		
	}
	public Optional <Imparte> buscarImparte(IdImparte imparteId) {
	return this.repositoryImparte.findById(imparteId);
	}
	
	public List<Imparte> obtenerTodasImparte(){
		return this.repositoryImparte.findAll();
	}
}
