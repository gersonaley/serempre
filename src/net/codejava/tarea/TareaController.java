package net.codejava.tarea;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.codejava.tarea.TareaService;

@Controller
public class TareaController {

	@Autowired
	private TareaService tareaService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		List<Tarea> listTarea = tareaService.listAll();
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("listTarea", listTarea);
		return mav;
	}
	
	@RequestMapping("/new")
	public String newTareaForm(Map<String, Object> model) {
		Tarea tarea = new Tarea();
		model.put("tarea", tarea);
		return "new_tarea";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveTarea(@ModelAttribute("tarea") Tarea tarea) {
		tareaService.save(tarea);
		return "redirect:/";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editTareaForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("edit_tarea");
		Tarea tarea = tareaService.get(id);
		mav.addObject("tarea", tarea);
		
		return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteTareaForm(@RequestParam long id) {
		tareaService.delete(id);
		return "redirect:/";		
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
		List<Tarea> result = tareaService.search(keyword);
		ModelAndView mav = new ModelAndView("search");
		mav.addObject("result", result);
		
		return mav;		
	}	
}
