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



import kr.ac.kopo.strike.model.Reply;
import kr.ac.kopo.strike.model.SuggestFree;
import kr.ac.kopo.strike.service.ReplyService;
import kr.ac.kopo.strike.service.SuggestFreeService;

@Controller
@RequestMapping("/suggestfree")
public class SuggestFreeContoller {
	final String path = "suggestfree/";
	
	private static final Logger logger = LoggerFactory.getLogger(SuggestFreeContoller.class);
	
	@Autowired
	SuggestFreeService service;
	
	@Autowired
	ReplyService replyservice;
	
	
	@RequestMapping({"/", "list"})
	public String list(Model model) {
		List<SuggestFree> list = service.list();
				
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(SuggestFree item, HttpSession session) {
		service.add(item);
		String name = (String) session.getAttribute("name");
		int member_code = (int) session.getAttribute("code");
		item.setName(name);
		item.setMember_code(member_code);
		return "redirect:list";
	}
	
	@GetMapping("/delete/{free_code}")
	public String delete(@PathVariable int free_code) {
		service.delete(free_code);
		
		return "redirect:..";
	}
	
	@GetMapping("/update/{free_code}" )
	public String update(@PathVariable int free_code, Model model) {
		SuggestFree item = service.item(free_code);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{free_code}")
	public String update(@PathVariable int free_code, SuggestFree item) {
		service.update(item);
		System.out.println(item);
		return "redirect:..";
	}
	
	@GetMapping("/view/{free_code}")
	public String view(@PathVariable int free_code,Model model) throws Exception{
		SuggestFree item = service.item(free_code);
		service.addCount(free_code);
		model.addAttribute("item", item);
		
		// 댓글 조회
		List<Reply> reply = null;
		reply = replyservice.list(free_code);
		model.addAttribute("reply", reply);
		
		
		return path+"view";
	}
	
	@RequestMapping(value= "/readView", method = RequestMethod.GET)
	public String read(SuggestFree suggestFree,Model model, int free_code) throws Exception{
		
		
		logger.info("read");
		model.addAttribute("read", service.read(suggestFree.getFree_code()));
		
		
		
		return "suggest/readView";
		
		
	}
	
	
	//댓글 생성
	@RequestMapping(value = "/reply/{free_code}/write", method = RequestMethod.POST)
	public String posttWrite(Reply reply) throws Exception {
		
		replyservice.write(reply);
		
		return "redirect:../../view/" + reply.getFree_code();
	}
	//댓글 삭제
	@GetMapping("/reply/{free_code}/replydelete")
	public String replydelete(@PathVariable int reply_code ,Reply reply) throws Exception {
		
		replyservice.delete(reply_code);
		
		return "redirect:../../";
	}
	//댓글 수정
	@GetMapping("/reply/{reply_code}/replyupdate" )
	public String replyupdate(@PathVariable int reply_code, Model model) {
		Reply reply = replyservice.replyitem(reply_code);
		
		model.addAttribute("reply", reply);
		
		return path + "replyupdate";
	}
	
	@PostMapping("/reply/{reply_code}/replyupdate")
	public String replyupdate(@PathVariable int reply_code,Reply reply) {
		replyservice.update(reply);
		System.out.println(reply);
		
		return "redirect:../../";
	}
	
}
