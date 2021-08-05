package proyecto.unah.bd.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import proyecto.unah.bd.model.Departamento;

public interface RepositoryDepartamento extends JpaRepository <Departamento, String>{
	
		public Optional<Departamento> findById(String Id);
		
		//public Clase findById(String Id); deberia ser de esa forma si la Id fuese de tipo int

}
