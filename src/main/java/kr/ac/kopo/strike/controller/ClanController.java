<<<<<<< HEAD
package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.service.ClanService;

@Controller
@RequestMapping("/clan")
public class ClanController {
	final String path = "clan/";
	
	@Autowired
	ClanService service;
	
	@RequestMapping({"/","/list"})
	public String list(Model model) {
		List<Clan> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(Clan item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/update/{clanName}")
	public String update(@PathVariable String clanName, Model model) {
		Clan item = service.item(clanName);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{clanName}")
	public String update(@PathVariable String clanName, Clan item) {
		service.update(item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/delete/{clanName}")
	public String delete(@PathVariable String clanName) {
		service.delete(clanName);
		return "redirect:../list";
	}
	
//	@GetMapping("/detail/[clanName}")
//	public String detail(@PathVariable String clanName, Model model) {
//		Clan item = service.detail(clanName);
//		
//		model.addAttribute("item", item);
//		
//		return path + "detail";
//	}
}
=======
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

@Controller
@RequestMapping("/clan")
public class ClanController {
	final String path = "/clan/";
	
	@Autowired
	ClanService service;
	
	@GetMapping("/list")
	public String list(Model model) {
		List<Clan> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}

	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(@SessionAttribute Member member, Clan clan) {
		
		clan.setMember_code(member.getMember_code());
		clan.setClan_master(member.getName());
		
		service.add(clan);
		
		return "redirect:list";
	}
	
	@GetMapping("/update/{member_code}")
	public String update(@SessionAttribute Member member, Model model) {
		
		Clan item = service.item(member.getMember_code());
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{member_code}")
	public String update(@SessionAttribute Member member, Clan item) {
		
		item.setMember_code(member.getMember_code());
		
		service.update(item);
		
		return "redirect:../list";
	}
	
	@GetMapping("/delete/{member_code}")
	public String delete(@SessionAttribute Member member) {
		
		service.delete(member.getMember_code());
		
		return "redirect:../list";
	}
}
>>>>>>> refs/heads/master
