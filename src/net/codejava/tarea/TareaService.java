package net.codejava.tarea;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.codejava.tarea.TareaRepository;

@Service
@Transactional
public class TareaService {
	@Autowired TareaRepository repo;
	
	public void save(Tarea tarea) {
		repo.save(tarea);
	}
	
	public List<Tarea> listAll() {
		return (List<Tarea>) repo.findAll();
	}
	
	public Tarea get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public List<Tarea> search(String keyword) {
		return repo.search(keyword);
	}
}
