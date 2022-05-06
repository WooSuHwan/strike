package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.service.ClanService;

@Controller
@RequestMapping("/clan")
public class ClanController {
	final String path = "/clan/";
	
	@Autowired
	ClanService service;
	
	@GetMapping("/list")
	public String list(Model model) {
		List<Clan> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}

	
}
