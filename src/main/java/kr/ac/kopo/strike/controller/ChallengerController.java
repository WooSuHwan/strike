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
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.ChallengerService;
import kr.co.kopo.strike.util.AES256Util;
import kr.co.kopo.strike.util.SHA256Util;

@Controller
@RequestMapping("/challenger")
public class ChallengerController {
	final String path = "/challenger/";
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	ChallengerService service;
	
	@GetMapping("/list/{game_code}")
	public String list(@PathVariable int game_code, Model model) {
		
		List<Challenger> list = service.list(game_code);
		
			for (Challenger item : list) {
				
				item.setName( aes256.decrypt(item.getName()) );
			}
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add/{game_code}")
	public String add(@PathVariable int game_code, @SessionAttribute Member member) {
		
		service.add(game_code, member.getMember_code());
		
		return "redirect:../list/" + game_code;
	}
	
	@GetMapping("/permission/{game_code}")
	public String permission(@PathVariable int game_code, @SessionAttribute Member member) {

		service.permission(game_code, member.getMember_code());
		
		return "redirect:../list/" + game_code;
	}
	
}
