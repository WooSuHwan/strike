package kr.ac.kopo.strike.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.FranchiseeLoginService;
import kr.ac.kopo.strike.service.LoginService;

@Controller
@RequestMapping("/franchiseeLogin")
public class FranchiseeLoginController {
	final String path = "franchiseeLogin/";
	
	@Autowired
	FranchiseeLoginService service;
	
	@GetMapping("/login")
	String login() {
		return path + "/login";
	}
	
	@PostMapping("/login")
	String login(String id, String pw, HttpSession session) {
		Franchisee franchisee = service.check(id, pw);

		if(franchisee == null) {
			return "redirect:/franchiseeLogin/login?wrong=true";
		} else {
			session.setAttribute("franchisee", franchisee);
			System.out.println("가맹정코드" + franchisee.getFranchisee_code());
			return "redirect:/";
		}
	}
	
	@RequestMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
