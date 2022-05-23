package kr.ac.kopo.strike.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager")
public class Manager {
	final String path = "/manager/";
	
	@Autowired
	ManagerService service;
	
	
	@GetMapping("/view")
	public String view() {
		
		return path + "view";
	}
	
}
