package com.shelter.app.ask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ask/*")
public class AskController {
	
	@Autowired
	private AskService askService;
	
	@GetMapping("list")
	public void list(Model model) throws Exception {
		
		model.addAttribute("list", askService.list());
	}

}
