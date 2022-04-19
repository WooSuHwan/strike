package kr.ac.kopo.strike.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.User_User;
import kr.ac.kopo.strike.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	final String path = "login/";
	
	@Autowired
	LoginService service;
	
	@GetMapping("/login")
	String login() {
		return path + "/login";
	}
	
	@PostMapping("/login")
	String login(String id, String pw, HttpSession session) {
		User_User user = service.check(id, pw);

		if(user == null) {
			return "redirect:/login/login?wrong=true";
		} else {
			session.setAttribute("code", user.getUser_code());
			session.setAttribute("name", user.getName());
			session.setAttribute("grade", user.getGrade());
			return "redirect:/";
		}
	}
	
	@RequestMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
