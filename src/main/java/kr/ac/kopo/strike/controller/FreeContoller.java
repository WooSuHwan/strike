package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Free;
import kr.ac.kopo.strike.service.FreeService;

@Controller
@RequestMapping("/free")
public class FreeContoller {
	final String path = "free/";
	
	@Autowired
	FreeService service;
	
	@GetMapping("list")
	public String list(Model model) {
		List<Free> list = service.list();
				
		model.addAttribute("list", list);
		
		return path + "list";
	}
}
