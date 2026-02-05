package com.jsp.Employee_test_work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jsp.Employee_test_work.entity.Employee2;
import com.jsp.Employee_test_work.repo.Emprepo;

@Controller
public class Empcontroller {
	@Autowired
	private Emprepo repo;

	  @GetMapping("/")
	    public String home() {
	        return "home";   
	    }
	  @GetMapping("/home")
	    public String gethome() {
	        return "home";   
	    }

	   
	    @GetMapping("/register")
	    public String register(Model model) {
	        model.addAttribute("employee", new Employee2());
	        return "register";   
	    }


	@PostMapping("/save")
	public String receive(@ModelAttribute Employee2 emp) {

	    repo.save(emp);

	    
	    return "redirect:/show";
	}

	@GetMapping("/show")
	public String display(
	        Model model,
	        @RequestParam(defaultValue = "0") int page,
	        @RequestParam(defaultValue = "dec") String sortDir) {

	    int size = 3;

	    Sort sort = sortDir.equals("dec") ?
	            Sort.by("id").descending() :
	            Sort.by("id").ascending();

	    Page<Employee2> empPage =
	            repo.findAll(PageRequest.of(page, size, sort));

	    model.addAttribute("Employee1", empPage.getContent());
	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPages", empPage.getTotalPages());
	    model.addAttribute("sortDir", sortDir);

	    return "show";
	}


	@GetMapping("/update")
	public String edit(@RequestParam int id, Model model) {
	    Employee2 employee = repo.findById(id).orElse(null);
	    model.addAttribute("employee", employee);
	    return "update"; 
	}

	@PostMapping("/update")
	public String update(@ModelAttribute Employee2 employee) {
	    repo.save(employee);
	    return "redirect:/show";
	}
 
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
	    repo.deleteById(id);
	    return "redirect:/show";
	}
	 @GetMapping("/search")
	 public String search(@RequestParam("q") String query) {
	     return "redirect:https://www.google.com/search?q=" + query;
	 }


}
