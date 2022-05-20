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
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.ClanService;
import kr.ac.kopo.strike.util.Pager;

@Controller
@RequestMapping("/clan")
public class ClanController {
	final String path = "/clan/";
	
	@Autowired
	ClanService service;
	
	@GetMapping("/list")
	public String list(Model model, Pager pager) {
		List<Clan> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}

	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(@SessionAttribute Member member, Clan clan) {
		
		clan.setClan_master(member.getMember_code());
		
		service.add(clan);
		
		return "redirect:list";
	}
	
	@GetMapping("/update/{clan_code}")
	public String update(@SessionAttribute Member member, Model model) {
		
		Clan item = service.item(member.getMember_code());
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{clan_code}")
	public String update(@SessionAttribute Member member, Clan item) {
		
		service.update(item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/delete/{clan_code}")
	public String delete(@SessionAttribute Member member) {
		
		service.delete(member.getMember_code());
		
		return "redirect:../list";
	}
}
