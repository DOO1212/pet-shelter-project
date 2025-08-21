package com.shelter.app.ask;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shelter.app.member.MemberVO;

import jakarta.servlet.http.HttpSession;

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
	public ModelAndView add(AskVO askVO, Model model, HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		if (member == null) {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/member/login");
			return mv;
		}
		
		askVO.setMemberId(member.getMemberId());		
		
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
	
	@GetMapping("update")
	public ModelAndView update(AskVO askVO, ModelAndView mv) throws Exception {
		askVO = askService.detail(askVO);
		
		mv.addObject("detail", askVO);
		mv.setViewName("ask/ask_form");
		return mv;
	}
	
	@PostMapping("update")
	public String update(AskVO askVO, Model model) throws Exception {
		int result = askService.update(askVO);
		
		String msg = "수정 실패";
		if (result > 0) {
			msg = "수정 성공";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", "./detail?askId="+askVO.getAskId());
		return "commons/result";
	}
	
	@PostMapping("delete")
	public String delete(AskVO askVO, Model model) throws Exception {
		int result = askService.delete(askVO);
		String msg = "삭제 실패";
		if (result>0) {
			msg = "삭제 성공";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", "./list");
		return "commons/result";
	}
}
