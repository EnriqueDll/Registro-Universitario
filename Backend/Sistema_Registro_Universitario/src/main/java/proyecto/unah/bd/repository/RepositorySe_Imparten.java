package proyecto.unah.bd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import proyecto.unah.bd.model.IdSe_Imparten;
import proyecto.unah.bd.model.Se_Imparten;

public interface RepositorySe_Imparten extends JpaRepository<Se_Imparten,IdSe_Imparten>{
	
	public Optional <Se_Imparten> findById(IdSe_Imparten Id);

}
