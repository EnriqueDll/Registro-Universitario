package proyecto.unah.bd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import proyecto.unah.bd.model.Carrera;

public interface RepositoryCarrera extends JpaRepository <Carrera, String>{
	
	public Optional<Carrera> findById(Carrera carrera);

}
