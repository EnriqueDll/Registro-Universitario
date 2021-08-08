package proyecto.unah.bd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import proyecto.unah.bd.model.Docente;

public interface RepositoryDocente extends JpaRepository<Docente,String>{
	
	public Docente findById(int id);
}
