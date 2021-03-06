package kr.ac.kopo.strike.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.strike.model.Reply;
import kr.ac.kopo.strike.service.ReplyService;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {
	
	@Inject
	ReplyService service;
	
	// λκΈ μμ±
	@ResponseBody
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String posttWirte(Reply reply) throws Exception {
		
		service.write(reply);
		
		return "redirect:/suggestfree/view?freeCode=" + reply.getFreeCode();
	}
	



}
