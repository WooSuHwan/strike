package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.FranchiseeGame;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.service.FranchiseePageService;
import kr.ac.kopo.strike.service.GameService;
import kr.co.kopo.strike.util.AES256Util;
import kr.co.kopo.strike.util.SHA256Util;

@Controller
@RequestMapping("/franchiseePage")
public class FranchiseePageController {
	final String path = "/franchiseePage/";
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	FranchiseePageService service;
	
	@Autowired
	GameService gameService;
	
	@GetMapping("/view")
	public String view() {
		
		return path + "view"; 
	}
	
	@GetMapping("/gameList/{franchisee_code}")
	public String gameList(@PathVariable int franchisee_code, Model model, @SessionAttribute Franchisee franchisee) {
		
		List<Game> game = service.game(franchisee.getAddress());
		
		model.addAttribute("game", game);
		
		return path + "gameList";
	}
	
	@GetMapping("/gameView/{game_code}")
	public String gameView(@PathVariable int game_code, Model model) {
		
		Game game = gameService.item(game_code);		
		List<FranchiseeGame> franchiseeGame = service.franchiseeGame(game_code);
		/**
		for (FranchiseeGame item : franchiseeGame) {
			
			item.setName( aes256.decrypt(item.getName()) );
		}
		*/
		model.addAttribute("game", game);
		model.addAttribute("franchiseeGame", franchiseeGame);
		
		return path + "gameView";
	}
	
}
