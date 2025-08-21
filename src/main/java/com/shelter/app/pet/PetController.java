package com.shelter.app.pet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pet/*")
public class PetController {
	
	@Autowired
	private PetService petService;
	
	@GetMapping("list")
	public void list(Model model) throws Exception {

		model.addAttribute("list", petService.list());
	}
	
	@GetMapping("detail")
	public void detail(PetVO petVO, Model model) throws Exception {
		
		model.addAttribute("detail", petService.detail(petVO));
	}
	
	@GetMapping("add")
	public String add() throws Exception {
		
		return "pet/pet_form";
	}
	
	@PostMapping("add")
	public ModelAndView add(PetVO petVO, Model model) throws Exception {
		
		int result = petService.insert(petVO);
		
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
	
	@GetMapping("update")
	public ModelAndView update(PetVO petVO, ModelAndView mv) throws Exception {
		petVO = petService.detail(petVO);
		
		mv.addObject("detail", petVO);
		mv.setViewName("pet/pet_form");
		return mv;
	}
	
	@PostMapping("update")
	public String update(PetVO petVO, Model model) throws Exception {
		int result = petService.update(petVO);
		
		String msg = "수정 실패";
		if (result > 0) {
			msg = "수정 성공";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", "./detail?petId="+petVO.getPetId());
		return "commons/result";
	}
	
//	@PostMapping("delete")
//	public String delete(PetVO petVO, Model model) throws Exception {
//		int result = petService.delete(petVO);
//		String msg = "삭제 실패";
//		if (result>0) {
//			msg = "삭제 성공";
//		}
//		
//		model.addAttribute("msg", msg);
//		model.addAttribute("url", "./list");
//		return "commons/result";
//	}
	
	
	

}
