package kr.ac.kopo.strike.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.service.FranchiseeService;

@Controller
@RequestMapping("/franchisee")
public class FranchiseeController {
	final String path = "/franchisee/";
	
	@Autowired
	FranchiseeService service;
	
	@GetMapping("/add")
	public String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(Franchisee franchisee) {
		
		if(service.confirm(franchisee.getId())) {
			
			return "redirect:add";
		}
		
		service.add(franchisee);
		
		return "redirect:../franchiseeLogin/login";
	}
	
	@ResponseBody
	@PostMapping("/same")
	public String confirm(String franchisee_id) {
		
		boolean overlap = service.confirm(franchisee_id);
		if(overlap == true) {
			return "overlap";
		} else {
			return "/use";
		}
	}
}
