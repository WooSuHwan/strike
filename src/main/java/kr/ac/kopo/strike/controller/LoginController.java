package kr.ac.kopo.strike.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Member;
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
	String login(String id, String pw, HttpSession session, HttpServletResponse response) throws IOException {
		Member member = service.check(id, pw);
		
		if(member == null) {
			return "redirect:/login/login?wrong=true";
		} else if(member.getState() == 1) {
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('이미 탈퇴했습니다'); </script>");
			out.println("<script>location.href='/login/login';</script>");
			out.flush();
		} else {
			session.setAttribute("member", member);
			session.setAttribute("name", member.getName());
			session.setAttribute("member_code", member.getMember_code());
			System.out.println(member.getMember_code());
			System.out.println(member.getName());
			
		}
		
		return "redirect:/";
	}
	
	@RequestMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
