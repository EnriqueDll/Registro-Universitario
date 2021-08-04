package proyecto.unah.bd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import proyecto.unah.bd.model.Maestria;

public interface RepositoryMaestria extends JpaRepository <Maestria, String>{
	
	public Optional <Maestria> findById (String Id);

}
