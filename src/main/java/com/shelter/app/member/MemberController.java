package com.shelter.app.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping(value = "/member/*")
@Slf4j
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("login")
	public String login() throws Exception {
		return "member/login";
	}
	
	@PostMapping("login")
	public String login(MemberVO memberVO, Model model, HttpSession session) throws Exception {
		memberVO = memberService.login(memberVO);
		log.info("[login] 데이터 조회 결과: {}", memberVO);
		
		String msg = "존재하는 회원이 아닙니다.";
		String url = "./login";
		if (memberVO == null) {
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "common/result";
		}
		
		session.setAttribute("member", memberVO);
		
		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("join")
	public String join() {
		return "member/join";
	}
	
	@PostMapping("join")
	public String join(MemberVO memberVO, Model model, HttpServletRequest req) {
		// 비밀번호 암호화
		memberVO.setPassword(req.getParameter("password"));
		
		// TODO 서비스 호출
		
		return "";
	}
}
