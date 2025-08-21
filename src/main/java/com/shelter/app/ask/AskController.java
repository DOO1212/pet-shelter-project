package com.shelter.app.ask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shelter.app.pet.PetVO;

@Controller
@RequestMapping("/ask/*")
public class AskController {
	
	@Autowired
	private AskService askService;
	
	@GetMapping("list")
	public void list(Model model) throws Exception {
		
		model.addAttribute("list", askService.list());
	}
	
	@GetMapping("detail")
	public void detail(AskVO askVO, Model model) throws Exception {
		
		model.addAttribute("detail", askService.detail(askVO));
	}

}
