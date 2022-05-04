package kr.ac.kopo.strike.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	final String path = "/member/";
	
	@Autowired
	MemberService service;
	
	@GetMapping("/add")
	public String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(Member member) {
		
		if(service.confirm(member.getId())) {
			
			return "redirect:add";
		}
		
		member.setClan("클랜없음");
		member.setTier("아이언");
		
		service.add(member);
		
		return "redirect:..";
	}
	
	@ResponseBody
	@PostMapping("/same")
	public String confirm(String user_id) {
		
		boolean overlap = service.confirm(user_id);
		if(overlap == true) {
			return "overlap";
		} else {
			return "/use";
		}
	}
}
