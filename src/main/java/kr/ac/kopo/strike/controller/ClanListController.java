package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.ClanList;
import kr.ac.kopo.strike.service.ClanListService;

@Controller
@RequestMapping("/clanList")
public class ClanListController {
	final String path = "clanList/";
	
	@Autowired
	ClanListService service;
	
	@RequestMapping({"/","/list"})
	public String list(Model model) {
		List<ClanList> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(ClanList item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/update")
	public String update(ClanList item, Model model) {
		ClanList Citem = service.item(item);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update")
	public String update(ClanList item) {
		service.update(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/delete")
	public String delete(ClanList item) {
		service.delete(item);
		return "redirect:list";
	}
}
