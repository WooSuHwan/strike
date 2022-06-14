package kr.ac.kopo.strike.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.Clan;
import kr.ac.kopo.strike.model.ClanGame;
import kr.ac.kopo.strike.model.ClanGameRecord;
import kr.ac.kopo.strike.model.Franchisee;
import kr.ac.kopo.strike.model.Game;
import kr.ac.kopo.strike.model.GameRecord;
import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.model.SuggestFree;
import kr.ac.kopo.strike.service.ClanGameService;
import kr.ac.kopo.strike.service.ClanService;
import kr.ac.kopo.strike.service.FranchiseePageService;
import kr.ac.kopo.strike.service.GameService;
import kr.ac.kopo.strike.service.MemberService;
import kr.ac.kopo.strike.service.SuggestFreeService;
import kr.ac.kopo.strike.util.AES256Util;
import kr.ac.kopo.strike.util.Pager;
import kr.ac.kopo.strike.util.SHA256Util;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	final String path = "mypage/";
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	GameService gameService;
	
	@Autowired
	ClanGameService clanGameService;
	
	@Autowired
	FranchiseePageService franchiseeService;
	
	
	@Autowired
	SuggestFreeService suggestFreeService;
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@GetMapping("/mypage/{member_code}")
	public String mypage(Member item, Model model, HttpSession session, @PathVariable int member_code) {
		
//		Member member = new Member();
//		member.setMember_code((Integer) session.getAttribute("code"));
//		model.addAttribute("member", member);
		
		Member Mitem = memberService.mypage(item);
		model.addAttribute("Mitem", Mitem);
		
		//유저 아이디가 admin이면 사원 목록으로 가고
		//admin이 아니면 로그인한 사원 개인 페이지로 간다
//		if("4".equals(item.getMember_code())) {
//			return path + "mypage";
//		} else {
//			return "redirect:/login/login";
//		}
//		
//		System.out.println(item.getName()+"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		
		return path + "mypage";
	}
	
	@GetMapping("/update/{member_code}")
	public String update(@PathVariable int member_code, Model model, Member member) {
		
		memberService.item(member);
		
		model.addAttribute("item", member);
		return path + "update";
	}
	
	@PostMapping("/update/{member_code}")
	public String update(@PathVariable int member_code, Member item) {
		memberService.update(item);
		
		return "redirect:/mypage/mypage/{member_code}";
	}
	// 클랜 삭제
	@GetMapping("/deleteClan")
	public String deleteClan() {
		
		return path + "deleteClan";
	}
	
	@GetMapping("deleteClan/{member_code}")
	public String deleteClan(@PathVariable int member_code) {
		
		memberService.deleteClan(member_code);
		
		return "redirect:/";
	}
	
	// 멤버 삭제
	@GetMapping("/deleteMember")
	public String deleteMember() {
		
		return path + "deleteMember";
	}
	
	@GetMapping("/deleteMember/{member_code}")
	public String deleteMember(@PathVariable int member_code, @SessionAttribute Member member, HttpServletResponse response) throws IOException {
		
		if(member.getState() == 0) {
			response.setContentType("text/html; charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원탈퇴가 완료되었습니다'); </script>");
			out.println("<script>location.href='list';</script>");
			out.flush();
			
			memberService.deleteMember(member_code);
		} 
			
		return "redirect:/";
	}
	
	@GetMapping("/gameDetail/{member_code}")
	public String gameDetail(@PathVariable int member_code, Model model, Pager pager) {
		
		List<Game> mypageGame =  gameService.mypageGame(pager);
		model.addAttribute("mypageGame", mypageGame);
		
		return path + "gameDetail";
	}
	
	@GetMapping("/clanGameDetail/{member_code}")
	public String clanGameDetail(@PathVariable int member_code, Model model, Pager pager) {
		
		List<ClanGame> mypageClanGame = clanGameService.mypageClanGame(pager);
		model.addAttribute("mypageClanGame", mypageClanGame);
		
		return path + "clanGameDetail";
		
	}
	
	@GetMapping("/mypageRecord/{member_code}")
	public String mypageRecord(@PathVariable int member_code, Model model) {
		
		List<GameRecord> mypageRecord = franchiseeService.mypageRecord();
		
		for (GameRecord item : mypageRecord) {
			
			item.setName( aes256.decrypt(item.getName()) );
			item.setChallenger_name( aes256.decrypt(item.getChallenger_name()) );
		}
		
		model.addAttribute("mypageRecord", mypageRecord);
		
		
		
		return path + "mypageRecord";
	}
	
	@GetMapping("/mypageClanRecord/{member_code}")
	public String mypageClanRecord(@PathVariable int member_code, Model model) {
		List<ClanGameRecord> mypageClanRecord = franchiseeService.mypageClanRecord();
		model.addAttribute("mypageClanRecord", mypageClanRecord);
		
		return path + "mypageClanRecord";
	}
	
	@GetMapping("/mypageFreeList/{member_code}")
	public String mypageFreeList(@PathVariable int member_code, Model model) {
		List<SuggestFree> mypageFreeList = suggestFreeService.mypageFreeList();
		model.addAttribute("mypageFreeList", mypageFreeList);
		
		return path + "mypageFreeList";
	}
}
