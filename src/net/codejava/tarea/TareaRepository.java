package net.codejava.tarea;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import net.codejava.tarea.Tarea;

public interface TareaRepository extends CrudRepository<Tarea, Long> {

	@Query(value = "SELECT c FROM Tarea c WHERE c.titulo LIKE '%' || :keyword || '%'"
			+ " OR c.descripcion LIKE '%' || :keyword || '%'"
			+ " OR c.usuario LIKE '%' || :keyword || '%'")
	public List<Tarea> search(@Param("keyword") String keyword);
}
