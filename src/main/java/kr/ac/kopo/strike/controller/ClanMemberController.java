package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.ClanMember;
import kr.ac.kopo.strike.service.ClanMemberService;

@Controller
@RequestMapping("/clanMember")
public class ClanMemberController {
	final String path = "/clanMember";
	
	@Autowired
	ClanMemberService service;
	
	@GetMapping("/list")
	public String list(Model model, @PathVariable int clan_code) {
		
		List<ClanMember> list = service.list(clan_code);
		
		model.addAttribute("list", list);
		
		return path + "list" + clan_code;
	}
}
