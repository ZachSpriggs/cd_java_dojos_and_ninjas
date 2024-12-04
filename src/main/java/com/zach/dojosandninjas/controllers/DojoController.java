package com.zach.dojosandninjas.controllers;

import org.springframework.stereotype.Controller;
import java.util.*;
import javax.validation.*;
import org.springframework.web.bind.annotation.*;
import com.zach.dojosandninjas.models.*;
import com.zach.dojosandninjas.services.DojoService;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;


@Controller
public class DojoController {

	private final DojoService dojoService;

	public DojoController(DojoService dojoService) {
		this.dojoService = dojoService;
	}
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/newDojo")
	public String dojoPage(Model model, @Valid @ModelAttribute("dojo") Dojo dojo) {
		model.addAttribute("dojo", dojo);
		return "newDojo.jsp";
	}
	
	@RequestMapping(value = "/dojos", method = RequestMethod.POST)
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "newDojo.jsp";
		} else {
			dojo = dojoService.createDojo(dojo);
			return "redirect:/dojos/" + dojo.getId();
		}
	}
	
	@RequestMapping("/ninja")
	public String ninjaPage(Model model, @ModelAttribute("dojo") Ninja ninja) {
		List<Dojo> dojos = dojoService.allDojos();
		model.addAttribute("dojos", dojos);
		model.addAttribute("ninja", ninja);
		return "newNinja.jsp";
	}
	
	
	@RequestMapping(value = "/createNinja", method = RequestMethod.POST)
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			return "newNinja.jsp";
		} else {
			dojoService.createNinja(ninja);
			return "redirect:/dojos/" + ninja.getDojo().getId();
		}
	}
	
	@RequestMapping(value = "/dojos/{id}", method = RequestMethod.GET)
	public String show(@PathVariable("id") Long dojoId, Model model) {
		Dojo dojo = dojoService.findDojo(dojoId);
		model.addAttribute("dojo", dojo);
		return "dojo.jsp";
	}
	
}
