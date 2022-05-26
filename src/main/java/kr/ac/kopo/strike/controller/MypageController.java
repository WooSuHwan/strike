package kr.ac.kopo.strike.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.GameService;
import kr.ac.kopo.strike.service.MemberService;
import kr.ac.kopo.strike.util.Pager;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	final String path = "mypage/";
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	GameService gameService;
	
	@GetMapping("/mypage/{member_code}")
	public String mypage(Member item,Model model, HttpSession session, @PathVariable int member_code) {
		
//		Member member = new Member();
//		member.setMember_code((Integer) session.getAttribute("code"));
//		model.addAttribute("member", member);
		
//		Member user = (Member) session.getAttribute("user");
		Member Mitem = memberService.mypage(item);
		
		model.addAttribute("item", item);
		//유저 아이디가 admin이면 사원 목록으로 가고
		//admin이 아니면 로그인한 사원 개인 페이지로 간다
//		if("/mypage/".equals(user.getMember_code())) {
//			return path + "mypage";
//		} else {
//			return "redirect:myinfo";
//		}
		
//		System.out.println(item.getName()+"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		
		return path + "mypage";
	}
	
	@GetMapping("/update/{member_code}")
	public String update(@PathVariable int member_code, Model model, Member member) {
		
		memberService.item(member);
		
		model.addAttribute("item", member);
		System.out.println(member.getName()+"**^*^^*^^*^^");
		return path + "update";
	}
	
	@PostMapping("/update/{member_code}")
	public String update(@PathVariable int member_code, Member item) {
		memberService.update(item);
		
		return "redirect:../mypage";
	}
	
	@RequestMapping("/delete")
	public String delete(Member item,Model model) {
		return path + "delete";
	}
	
	@GetMapping("/delete/{member_code}")
	public String delete(@PathVariable int member_code) {
		memberService.delete(member_code);
		return "redirect:../index";
	}
	
	@GetMapping("/gameDetail/{member_code}")
	public String gameDetail(@PathVariable int member_code, Model model, Pager pager) {
		
		List<Game> mypageGame =  gameService.mypageGame(pager);
		model.addAttribute("mypageGame", mypageGame);
		
		return path + "gameDetail";
	}
}
