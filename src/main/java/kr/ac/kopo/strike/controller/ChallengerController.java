package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.ChallengerMember;
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
		List<ChallengerMember> list = service.list(game_code);
		
		// List<ChallengerMember> decryptList = new ArrayList<ChallengerMember>(list.size());
		
		// Collections.copy(decryptList, list);
			
			for (ChallengerMember item : list) {
			
				// decryptMember.setName(aes256.decrypt(decryptMember.getName()));
				
				item.setName( aes256.decrypt(item.getName()) );
			}
		
		model.addAttribute("game_code", game_code);
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add/{game_code}")
	public String add(@PathVariable int game_code, @SessionAttribute Member member) {
		
		service.add(game_code, member.getMember_code());
		
		// return path + "add/" + game_code;
		return "redirect:../list/" + game_code;
	}
	
	@GetMapping("/permission/{member_code}")
	public String permission(@PathVariable int game_code, @SessionAttribute Member member) {
		
		service.permission(game_code, member.getMember_code());
		
		return "redirect:../list/" + game_code;
	}
	
	@GetMapping("/delete/{game_code}")
	public String delete(@PathVariable int game_code) {
		
		service.delete(game_code);
		
		return "redirect:../list/" + game_code;
	}
}
