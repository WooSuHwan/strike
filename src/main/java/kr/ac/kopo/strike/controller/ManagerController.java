package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.ClanService;
import kr.ac.kopo.strike.service.GameService;
import kr.ac.kopo.strike.service.RankService;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.SHA256Util;

@Controller
@RequestMapping("/manager")
public class ManagerController {
	final String path = "/manager/";
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	/**
	@Autowired
	ManagerService service;
	*/
	@Autowired
	RankService member;
	
	@Autowired 
	GameService game;
	
	@Autowired
	ClanService clan;
	
	@GetMapping("/view")
	public String view() {
		
		return path + "view";
	}
	
	@GetMapping("/memberList")
	public String memberList(Model model) {
		
		List<Member> list = member.list();
		
		for (Member item : list) {
			
			item.setName( aes256.decrypt(item.getName()) );
		}
		
		model.addAttribute("list", list);
		
		return path + "memberList";
	}
	
	@GetMapping("/gameList")
	public String gameList(Model model) {
		
		List<Game> list = game.list();
		
		model.addAttribute("list", list);
		
		return path + "gameList";
	}
	
	@GetMapping("/clanList")
	public String clanList(Model model) {
		
		List<Clan> list = clan.list();
		
		for (Clan item : list) {
			
			item.setName( aes256.decrypt(item.getName()) );
		}
		
		model.addAttribute("list", list);
		
		return path + "clanList";
	}
}
