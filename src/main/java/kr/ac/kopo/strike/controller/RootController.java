package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.service.ClanService;

@Controller
public class RootController {

	@Autowired
	ClanService clanService;
	
	@RequestMapping("/")
	public String index(Model model) {
		List<Clan> clanList = clanService.list();
		
		model.addAttribute("clanList", clanList);
		
		return "index";
	}
	
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
	
//	회원가입
	@RequestMapping("/singup1")
	public String singup1() {
		return "singup1";
	}
	
	@RequestMapping("/singup2")
	public String singup2() {
		return "singup2";
	}
	
//	회원가입 끝
}
