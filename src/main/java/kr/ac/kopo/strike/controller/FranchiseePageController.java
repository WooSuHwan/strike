package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.ClanGame;
import kr.ac.kopo.strike.model.ClanGameRecord;
import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.GameRecord;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.service.ClanGameService;
import kr.ac.kopo.strike.service.FranchiseePageService;
import kr.ac.kopo.strike.service.GameService;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.SHA256Util;

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
	
	@Autowired
	ClanGameService clanGameService;
	
	@GetMapping("/view")
	public String view() {
		
		return path + "view"; 
	}
	// 개인 게임 부분
	@GetMapping("/gameList/{franchisee_code}")
	public String gameList(@PathVariable int franchisee_code, Model model, @SessionAttribute Franchisee franchisee) {
		
		List<Game> game = service.game(franchisee.getAddress());
		
		model.addAttribute("game", game);
		
		return path + "gameList";
	}
	
	@GetMapping("/gameView/{game_code}")
	public String gameView(@PathVariable int game_code, Model model) {
		
		Game game = gameService.item(game_code);		
		List<GameRecord> gameRecord = service.gameRecord(game_code);
		
		for (GameRecord item : gameRecord) {
			
			item.setName( aes256.decrypt(item.getName()) );
			item.setChallenger_name( aes256.decrypt(item.getChallenger_name()) );
		}
		
		List<GameRecord> gameRecordEnd = service.gameRecordEnd(game_code);
		
		for (GameRecord item : gameRecordEnd) {
			
			item.setName( aes256.decrypt(item.getName()) );
			item.setChallenger_name( aes256.decrypt(item.getChallenger_name()) );
		}
		
		model.addAttribute("game", game);
		model.addAttribute("gameRecord", gameRecord);
		model.addAttribute("gameRecordEnd", gameRecordEnd);
		
		return path + "gameView";
	}
	
	@GetMapping("/makerWin/{game_code}/{game_record_code}/{maker_code}/{challenger_code}")
	public String makerWin(@PathVariable int game_code, @PathVariable int game_record_code, @PathVariable int maker_code, @PathVariable int challenger_code) {
		
		service.makerWin(maker_code);
		service.challengerLose(challenger_code);
		service.makerWinGameRecord(game_record_code, maker_code, challenger_code);
		
		return "redirect:/franchiseePage/gameView/" + game_code;
	}
	
	@GetMapping("/challengerWin/{game_code}/{game_record_code}/{challenger_code}/{maker_code}")
	public String challengerWin(@PathVariable int game_code, @PathVariable int game_record_code, @PathVariable int challenger_code, @PathVariable int maker_code) {

		service.challengerWin(challenger_code);
		service.makerLose(maker_code);
		service.challengerWinGameRecord(game_record_code, challenger_code, maker_code);
		
		return "redirect:/franchiseePage/gameView/" + game_code;
	}
	
	@GetMapping("/draw/{game_code}/{game_record_code}/{maker_code}/{challenger_code}")
	public String draw(@PathVariable int game_code, @PathVariable int game_record_code, @PathVariable int maker_code, @PathVariable int challenger_code) {
		
		service.draw(maker_code, challenger_code);
		service.drawGameRecord(game_record_code);
		
		return "redirect:/franchiseePage/gameView/" + game_code;
	}
	// 클랜 게임 부분
	@GetMapping("/clanGameList/{franchisee_code}")
	public String ClanGameList(@PathVariable int franchisee_code, Model model, @SessionAttribute Franchisee franchisee) {
		
		List<ClanGame> clanGame = service.clanGame(franchisee.getAddress());
		
		model.addAttribute("clanGame", clanGame);
		
		return path + "clanGameList";
	}
	
	@GetMapping("/clanGameView/{clan_game_code}")
	public String ClanGameView(@PathVariable int clan_game_code, Model model) {
		
		ClanGame clanGame = clanGameService.item(clan_game_code);		
		List<ClanGameRecord> clanGameRecord = service.clanGameRecord(clan_game_code);
		List<ClanGameRecord> clanGameRecordEnd = service.clanGameRecordEnd(clan_game_code);
		
		model.addAttribute("clanGame", clanGame);
		model.addAttribute("clanGameRecord", clanGameRecord);
		model.addAttribute("clanGameRecordEnd", clanGameRecordEnd);
		
		return path + "clanGameView";
	}
	
	@GetMapping("/clanMakerWin/{clan_game_code}/{clan_game_record_code}/{clan_maker_code}/{clan_challenger_code}")
	public String clanMakerWin(@PathVariable int clan_game_code, @PathVariable int clan_game_record_code, @PathVariable int clan_maker_code, @PathVariable int clan_challenger_code) {
		
		service.clanMakerWin(clan_maker_code);
		service.clanChallengerLose(clan_challenger_code);
		service.clanMakerWinGameRecord(clan_game_record_code, clan_maker_code, clan_challenger_code);
		
		return "redirect:/franchiseePage/clanGameView/" + clan_game_code;
	}
	
	@GetMapping("/clanChallengerWin/{clan_game_code}/{clan_game_record_code}/{clan_challenger_code}/{clan_maker_code}")
	public String clanChallengerWin(@PathVariable int clan_game_code, @PathVariable int clan_game_record_code, @PathVariable int clan_challenger_code, @PathVariable int clan_maker_code) {

		service.clanChallengerWin(clan_challenger_code);
		service.clanMakerLose(clan_maker_code);
		service.clanChallengerWinGameRecord(clan_game_record_code, clan_challenger_code, clan_maker_code);
		
		return "redirect:/franchiseePage/clanGameView/" + clan_game_code;
	}
	
	@GetMapping("/clanDraw/{clan_game_code}/{clan_game_record_code}/{clan_maker_code}/{clan_challenger_code}")
	public String clanDraw(@PathVariable int clan_game_code, @PathVariable int clan_game_record_code, @PathVariable int clan_maker_code, @PathVariable int clan_challenger_code) {
		
		service.clanDraw(clan_maker_code, clan_challenger_code);
		service.clanDrawGameRecord(clan_game_record_code);
		
		return "redirect:/franchiseePage/clanGameView/" + clan_game_code;
	}
}
