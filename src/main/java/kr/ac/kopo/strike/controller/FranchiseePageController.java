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
		
		for (FranchiseeGame item : franchiseeGame) {
			
			item.setName( aes256.decrypt(item.getName()) );
			item.setChallenger_name( aes256.decrypt(item.getChallenger_name()) );
		}
		
		model.addAttribute("game", game);
		model.addAttribute("franchiseeGame", franchiseeGame);
		
		return path + "gameView";
	}
	
	@GetMapping("/makerWin/{game_code}/{member_code}/{challenger_code}")
	public String makerWin(@PathVariable int game_code, @PathVariable int member_code, @PathVariable int challenger_code) {

		service.makerWin(member_code);
		service.challengerLose(challenger_code);
		service.makerWinGameRecord(game_code, member_code, challenger_code);
		
		return "redirect:/franchiseePage/gameView/" + game_code;
	}
	
	@GetMapping("/challengerWin/{game_code}/{challenger_code}/{member_code}")
	public String challengerWin(@PathVariable int game_code, @PathVariable int challenger_code, @PathVariable int member_code) {

		service.challengerWin(challenger_code);
		service.makerLose(member_code);
		service.challengerWinGameRecord(game_code, challenger_code, member_code);
		
		return "redirect:/franchiseePage/gameView/" + game_code;
	}
	
	@GetMapping("/draw/{game_code}/{member_code}/{challenger_code}")
	public String draw(@PathVariable int game_code, @PathVariable int member_code, @PathVariable int challenger_code) {
		
		service.draw(member_code, challenger_code);
		service.drawGameRecord(game_code, member_code, challenger_code);
		
		return "redirect:/franchiseePage/gameView/" + game_code;
	}
}
