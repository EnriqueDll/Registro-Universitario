package proyecto.unah.bd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import proyecto.unah.bd.model.Estudiante;

public interface RepositoryEstudiante extends JpaRepository<Estudiante, String>{
	
	public Optional<Estudiante> findById(String Id);
	
	//public Estudiante findById(String Id); deberia ser de esa forma si la Id fuese de tipo int

}
