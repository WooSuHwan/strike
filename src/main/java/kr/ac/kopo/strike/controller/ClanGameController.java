package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.Challenger;
import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanGame;
import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.ClanGameService;
import kr.ac.kopo.strike.service.GameService;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.SHA256Util;

@Controller
@RequestMapping("/clanGame")
public class ClanGameController {
	final String path = "/clanGame/";
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	ClanGameService service;
	
	@Autowired
	GameService gameService;
	
	@GetMapping("list")
	public String list(Model model) {
		
		List<ClanGame> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add(Model model) {
		
		List<Franchisee> franchiseeList = gameService.franchiseeList();
		
		model.addAttribute("franchiseeList", franchiseeList);
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(@SessionAttribute Member member, ClanGame clanGame) {
		
		clanGame.setMember_code(member.getMember_code());
		clanGame.setClan_code(member.getClan_code());
		
		service.add(clanGame);
		
		return "redirect:list";
	}
	
	@GetMapping("/view/{clan_game_code")
	public String view(@PathVariable int clan_game_code, Model model) {
		
		ClanGame clanGame = service.item(clan_game_code);
		List<Clan> clan = service.clan(clan_game_code);
		
		model.addAttribute("clanGame", clanGame);
		model.addAttribute("clan", clan);
		
		return path + "view";
	}
	
}
