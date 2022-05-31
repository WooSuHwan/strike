package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.ClanService;
import kr.ac.kopo.strike.service.RankService;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.SHA256Util;

@Controller
public class RootController {

	@Autowired
	ClanService clanService;
	
	@Autowired
	RankService rankService;
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@RequestMapping("/")
	public String index(Model model) {
		List<Clan> clanList = clanService.clanList();		
		model.addAttribute("clanList", clanList);
		
		List<Member> rankList = rankService.rankList();
		model.addAttribute("rankList", rankList);
		for (Member item : rankList) {
					
					item.setName( aes256.decrypt(item.getName()) );
				}
		
		
		return "index";
	}
	
	@RequestMapping("/franchisee")
	public String franchisee() {
		
		return "franchisee";
	}
	
	@RequestMapping("/manger")
	public String manger() {
		
		return "manger";
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
