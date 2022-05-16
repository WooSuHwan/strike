package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.ClanMemberMember;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.ClanMemberService;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.SHA256Util;

@Controller
@RequestMapping("/clanMember")
public class ClanMemberController {
	final String path = "/clanMember/";
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	ClanMemberService service;
	
	@GetMapping("/list/{clan_code}")
	public String list(Model model, @PathVariable int clan_code) {
		
		List<ClanMemberMember> list = service.list(clan_code);
		
		for (ClanMemberMember item : list) {
			item.setName( aes256.decrypt(item.getName()) );
		}
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add/{clan_code}")
	public String add(@PathVariable int clan_code, @SessionAttribute Member member) {
		
		service.add(clan_code, member.getMember_code());
		
		return "redirect:../list/" + clan_code;
	}
	
	@GetMapping("/permission/{clan_code}")
	public String permission(@PathVariable int clan_code, @SessionAttribute Member member) {

		service.permission(clan_code, member.getMember_code());
		
		return "redirect:../list/" + clan_code;
	}
	
}
