package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.FranchiseeAdd;
import kr.ac.kopo.strike.service.FranchiseeAddService;

@Controller
@RequestMapping("/franchiseeAdd")
public class FranchiseeAddController {
	final String path = "/franchiseeAdd/";
	
	@Autowired
	FranchiseeAddService service;
	
	@GetMapping("/list")
	public String list(Model model) {
		
		List<FranchiseeAdd> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(FranchiseeAdd franchiseeAdd) {
		
		service.add(franchiseeAdd);
		
		return "redirect:list";
	}
	
	@GetMapping("/view/{franchisee_suggest_code}")
	public String view(@PathVariable int franchisee_suggest_code, Model model) {
		
		FranchiseeAdd item = service.item(franchisee_suggest_code);
		
		model.addAttribute("item", item);
		
		return path + "view";
	}
	
}
