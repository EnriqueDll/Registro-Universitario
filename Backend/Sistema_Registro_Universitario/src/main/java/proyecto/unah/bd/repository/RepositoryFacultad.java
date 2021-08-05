package proyecto.unah.bd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import proyecto.unah.bd.model.Facultad;

public interface RepositoryFacultad extends JpaRepository <Facultad, String>{
	
	public Optional<Facultad> findById(String Id);

}
