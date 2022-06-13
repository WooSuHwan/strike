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
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanMember;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.ClanService;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.Pager;
import kr.ac.kopo.strike.util.SHA256Util;

@Controller
@RequestMapping("/clan")
public class ClanController {
	final String path = "/clan/";
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	ClanService service;
	
	@GetMapping("/list")
	public String list(Model model, Pager pager) {
		List<Clan> list = service.list(pager);
		
		for (Clan item : list) {
			
			item.setName( aes256.decrypt(item.getName()) );
		}
		
		model.addAttribute("list", list);
		
		return path + "list";
	}

	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(@SessionAttribute Member member, Clan clan, HttpServletResponse response) throws IOException {
		
		if(member.getClan_code() != 0) {
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('이미 클랜이 있습니다'); </script>");
			out.println("<script>location.href='list';</script>");
			out.flush();
			
		} else {
			
			clan.setClan_master_code(member.getMember_code());
			
			service.add(clan);
			
			Clan get = service.get(member.getMember_code());
			
			service.change(member.getMember_code(), get.getClan_code());
		}
		
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
	
	@GetMapping("/view/{clan_code}")
	public String view(@PathVariable int clan_code, Model model) {
		
		Clan clan = service.item(clan_code);
		List<ClanMember> wait = service.wait(clan_code);
		
		for (ClanMember item : wait) {
			
			item.setName( aes256.decrypt(item.getName()) );
		}
		
		List<ClanMember> clanMember = service.clanMember(clan_code);
		
		for (ClanMember item : clanMember) {
			
			item.setName( aes256.decrypt(item.getName()) );
		}
		
		model.addAttribute("clan", clan);
		model.addAttribute("wait", wait);
		model.addAttribute("clanMember", clanMember);
		
		return path + "view";
	}
	
	@GetMapping("/application/{clan_code}/{member_code}")
	public String add(@PathVariable int clan_code, @SessionAttribute Member member) {
		
		service.application(clan_code, member.getMember_code());
		
		return "redirect:/clan/view/" + clan_code;
	}
	
	@GetMapping("/permission/{clan_code}/{clan_member_code}")
	public String permission(@PathVariable int clan_code, @PathVariable int clan_member_code) {

		service.permission(clan_code, clan_member_code);
		
		ClanMember getMember = service.getMember(clan_member_code);
		
		service.changeMember(getMember.getClan_code() ,getMember.getMember_code());
		
		return  "redirect:/clan/view/" + clan_code;
	}
}
