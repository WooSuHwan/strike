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

import kr.ac.kopo.strike.model.ClanGameMember;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.GameService;

@Controller
@RequestMapping("/clanGame")
public class ClanGameController {
	final String path = "/clanGame/";
	
	@Autowired
	ClanGameService service;
	
	@GetMapping("/list")
	public String list(Model model) {

		List<Game> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(@SessionAttribute Member member, ClanGameMember game) {
		
		game.setMember_code(member.getMember_code());
		game.setMaker(member.getName());
		
		service.add(game);
		
		return "redirect:list";
	}
	
	@GetMapping("/delete/{clan_game_code}")
	public String delete(@PathVariable int clan_game_code) {
		
		service.delete(clan_game_code);
		
		return "redirect:../list";
	}
	
	@GetMapping("/update/{clan_game_code}")
	public String update(@PathVariable int clan_game_code, Model model, Game game, Member member) {
	
		game.setMember_code(member.getMember_code());
		
		Game item = service.item(clan_game_code); 
		
		model.addAttribute("item", item);
	
		return path + "update";
	}
	
	@PostMapping("/update/{clan_game_code}")
	public String update(@PathVariable int clan_game_code, Game item) {
		
		service.update(item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/view/{clan_game_code}")
	public String view(@PathVariable int clan_game_code, Model model) {
		
		List<ClanGameMember> view = service.view(clan_game_code);
		
		model.addAttribute("view", view);
		
		return path + "view";
	}
	
}
