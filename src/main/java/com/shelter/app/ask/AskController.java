package com.shelter.app.ask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

	@GetMapping("add")
	public String add() throws Exception {
		
		return "ask/ask_form";
	}
	
	@PostMapping("add")
	public ModelAndView add(AskVO askVO, Model model) throws Exception {
		
		int result = askService.insert(askVO);
		
		String msg = "등록 실패";
		if (result > 0) {
			msg = "등록 성공";
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", msg);
		mv.addObject("url", "./list");
		
		mv.setViewName("commons/result");
		
		return mv;
	}
}
