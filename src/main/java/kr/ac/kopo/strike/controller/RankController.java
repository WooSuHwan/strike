package kr.ac.kopo.strike.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.service.RankService;
import kr.co.kopo.strike.util.AES256Util;
import kr.co.kopo.strike.util.SHA256Util;

@Controller
@RequestMapping("/rank")
public class RankController {
	final String path = "/rank/";
	
	AES256Util aes256 = new AES256Util();
	SHA256Util sha256 = new SHA256Util();
	
	@Autowired
	RankService service;
	
	@GetMapping("list")
	public String list(Model model) {
		
		List<Member> list = service.list();
		
		for (Member item : list) {
			
			item.setName( aes256.decrypt(item.getName()) );
		}
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
}
