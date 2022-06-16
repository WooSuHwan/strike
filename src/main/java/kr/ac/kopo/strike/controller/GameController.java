package kr.ac.kopo.strike.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.Challenger;
import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.GameService;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.Pager;
import kr.ac.kopo.strike.util.SHA256Util;

@Controller
@RequestMapping("/game")
public class GameController {
	final String path = "/game/";
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	GameService service;
	
	@GetMapping("/list")
	public String list(Model model, Pager pager) {

		List<Game> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add(Model model, Pager pager) {	
		
		List<Franchisee> franchiseeList = service.franchiseeList(pager);
		
		model.addAttribute("franchiseeList", franchiseeList);
		
		return path + "add";
	}
	// 카카오 지도
	// loadMap
	@GetMapping("/add/map")
	@ResponseBody
	public List<Franchisee> map() {
		
		List<Franchisee> map = service.map();
		System.out.println("지도" + map);
		return map;
	}
	
	@PostMapping("/add")
	public String add(@SessionAttribute Member member, Game game) {
		
		game.setMember_code(member.getMember_code());
		game.setMaker(member.getName());
		
		service.add(game);
		
		return "redirect:list";
	}
	
	@GetMapping("/delete/{game_code}")
	public String delete(@PathVariable int game_code) {
		
		service.delete(game_code);
		
		return "redirect:../list";
	}
	
	@GetMapping("/update/{game_code}")
	public String update(@PathVariable int game_code, Model model, Game game, Member member) {
	
		game.setMember_code(member.getMember_code());
		
		Game item = service.item(game_code); 
		
		model.addAttribute("item", item);
	
		return path + "update";
	}
	
	@PostMapping("/update/{game_code}")
	public String update(@PathVariable int game_code, Game item) {
		
		service.update(item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/view/{game_code}")
	public String view(@PathVariable int game_code, Model model) {	
		
		Game game = service.item(game_code);
		List<Member> member = service.member(game_code);
		List<Challenger> admitChallenger = service.admitChallenger(game_code);
		
		for (Challenger item : admitChallenger) {
			
			item.setName( aes256.decrypt(item.getName()) );
		}
		
		List<Challenger> challenger = service.challenger(game_code);
		
		for (Challenger item : challenger) {
			
			item.setName( aes256.decrypt(item.getName()) );
		}
		
		model.addAttribute("game", game);
		model.addAttribute("member", member);
		model.addAttribute("challenger", challenger);
		model.addAttribute("admitChallenger", admitChallenger);
		
		return path + "view";
	}
	
	@GetMapping("/challenge/{game_code}")
	public String add(@PathVariable int game_code, @SessionAttribute Member member, HttpServletResponse response) throws IOException {
		
		if(service.compare(game_code, member.getMember_code()) > 0) {
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('자신의 게임 입니다'); </script>");
			out.println("<script>location.href='../list';</script>");
			out.flush();
		} else if(service.confirm(game_code, member.getMember_code()) > 0) {
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('이미 신청을 했습니다'); </script>");
			out.println("<script>location.href='../list';</script>");
			out.flush();
		} else {
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('신청을 했습니다'); </script>");
			out.println("<script>location.href='../list';</script>");
			out.flush();
			service.challenge(game_code, member.getMember_code());
		}
		return "redirect:../view/" + game_code;
	}

	@GetMapping("/permission/{game_code}/{challenger_code}/{challenger_member_code}/{member_code}")
	public String permission(@PathVariable int game_code, @PathVariable int challenger_code, @PathVariable int challenger_member_code, @SessionAttribute Member member) {
		
		service.permission(game_code, challenger_code);
		service.addGame(game_code, challenger_member_code, member.getMember_code());
		
		return "redirect:/game/view/" + game_code;
	}
	
	@ResponseBody
	@PostMapping("/same")
	public String confirm(String loc) {
		
		boolean overlap = service.confirm(loc);
		if(overlap == true) {
			return "overlap";
		} else {
			return "/no";
		}
	}
}
