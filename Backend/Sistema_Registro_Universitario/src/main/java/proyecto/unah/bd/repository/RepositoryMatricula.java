package proyecto.unah.bd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import proyecto.unah.bd.model.Matricula;

public interface RepositoryMatricula extends JpaRepository <Matricula, String>{
	
	public Optional <Matricula> findById(String Id);
	
	//public Matricula findById(String Id); deberia ser de esa forma si la Id fuese de tipo int

}
