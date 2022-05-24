package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.service.FranchiseePageService;

@Controller
@RequestMapping("/franchiseePage")
public class FranchiseePage {
	final String path = "/franchiseePage/";
	
	@Autowired
	FranchiseePageService service;
	
	@GetMapping("/view")
	public String view() {
		
		return path + "view"; 
	}
	
	@GetMapping("/gameList")
	public String gameList(Model model, @SessionAttribute Franchisee franchisee) {
		
		Game game = service.game(franchisee.getAddress());
		System.out.println("아아템" + game);
		model.addAttribute("game", game);
		
		return path + "gameList";
	}
	
}
