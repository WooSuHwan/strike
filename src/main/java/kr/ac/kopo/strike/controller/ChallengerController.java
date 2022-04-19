package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.Challenger;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.ChallengerService;

@Controller
@RequestMapping("/challenger")
public class ChallengerController {
	final String path = "/challenger/";
	
	@Autowired
	ChallengerService service;
	
	@GetMapping("/list/{game_code}")
	public String enter(@PathVariable int game_code, Model model, @SessionAttribute Member member) {
		
		Challenger challenger = new Challenger();
		
		challenger.setMember_code(member.getMember_code());
		challenger.setGame_code(game_code);
		
		List<Challenger> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
}
