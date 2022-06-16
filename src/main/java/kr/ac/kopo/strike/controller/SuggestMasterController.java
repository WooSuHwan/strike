package kr.ac.kopo.strike.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.strike.model.Member;
import kr.ac.kopo.strike.model.SuggestMaster;

import kr.ac.kopo.strike.service.SuggestMasterService;
import kr.ac.kopo.strike.util.Pager;

@Controller
@RequestMapping("/suggestmaster")
public class SuggestMasterController {
	final String path = "suggestmaster/";
	
	private static final Logger logger = LoggerFactory.getLogger(SuggestMasterController.class);
	
	
	@Autowired
	SuggestMasterService service;
	
	@RequestMapping({"/", "list"})
	public String list(Model model,Pager pager) {
		
		List<SuggestMaster> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add") 
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(SuggestMaster item, @SessionAttribute Member member, Model model) {
		item.setMember_code(member.getMember_code());
		item.setName(member.getName());
		
		service.add(item);
		
		return "redirect:list";
	}
	@GetMapping("/delete/{master_code}")
	public String delete(@PathVariable int master_code) {
		service.delete(master_code);
		
		return "redirect:..";
	}

	@GetMapping("/update/{master_code}")
	public String update(@PathVariable int master_code, Model model) {
		SuggestMaster item = service.item(master_code);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("update/{master_code}")
	public String update(@PathVariable int master_code, SuggestMaster item) {
		service.update(item);
		System.out.println(item);
		return "redirect:..";
	}
	
	@GetMapping("/view/{master_code}")
	public String view(@PathVariable int master_code,Model model) {
		SuggestMaster item = service.item(master_code);
		service.addCount(master_code);
		model.addAttribute("item", item);
		return path+"view";
	}
	@RequestMapping(value= "/readView", method = RequestMethod.GET)
	public String read(SuggestMaster suggestMaster,Model model) throws Exception{
		
		logger.info("read");
		model.addAttribute("read", service.read(suggestMaster.getMaster_code()));
		
		return "suggest/readView";
	}
	
	
}