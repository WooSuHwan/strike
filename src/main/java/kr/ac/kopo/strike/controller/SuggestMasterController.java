package kr.ac.kopo.strike.controller;

import java.util.List;

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

import kr.ac.kopo.strike.model.SuggestMaster;
import kr.ac.kopo.strike.service.SuggestMasterService;

@Controller
@RequestMapping("/suggestmaster")
public class SuggestMasterController {
	final String path = "suggestmaster/";
	
	private static final Logger logger = LoggerFactory.getLogger(SuggestMasterController.class);
	
	
	@Autowired
	SuggestMasterService service;
	
	@RequestMapping({"/", "list"})
	public String list(Model model) {
		List<SuggestMaster> list = service.list();
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add") 
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(SuggestMaster item, HttpSession session) {
		service.add(item);
		String name = (String) session.getAttribute("name");
		int user_code = (int) session.getAttribute("code");
		item.setName(name);
		item.setUser_code(user_code);
		return "redirect:list";
	}
	@GetMapping("/delete/{MasterCode}")
	public String delete(@PathVariable int MasterCode) {
		service.delete(MasterCode);
		
		return "redirect:..";
	}
	@GetMapping("/update/{MasterCode}" )
	public String update(@PathVariable int MasterCode, Model model) {
		SuggestMaster item = service.item(MasterCode);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{MasterCode}")
	public String update(@PathVariable int MasterCode, SuggestMaster item) {
		service.update(item);
		System.out.println(item);
		return "redirect:..";
	}
	
	@GetMapping("/view/{MasterCode}")
	public String view(@PathVariable int MasterCode,Model model) {
		SuggestMaster item = service.item(MasterCode);
		service.addCount(MasterCode);
		model.addAttribute("item", item);
		return path+"view";
	}
	@RequestMapping(value= "/readView", method = RequestMethod.GET)
	public String read(SuggestMaster suggestMaster,Model model) throws Exception{
		
		logger.info("read");
		model.addAttribute("read", service.read(suggestMaster.getMasterCode()));
		
		return "suggest/readView";
	}
	
	
}