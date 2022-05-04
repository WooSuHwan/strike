package kr.ac.kopo.strike.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RootController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
}
