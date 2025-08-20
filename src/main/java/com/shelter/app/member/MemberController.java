package com.shelter.app.member;

import java.util.List;

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
	public String login(MemberVO memberVO, Model model, HttpSession session, HttpServletRequest req) throws Exception {
		// 비밀번호 암호화
		memberVO.setPassword(req.getParameter("password"));
		System.out.println("[MemberController] login - memberVO" + memberVO);
		
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
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("join")
	public String join() throws Exception {
		return "member/join";
	}
	
	@PostMapping("join")
	public String join(MemberVO memberVO, Model model, HttpServletRequest req) throws Exception {
		// 비밀번호 암호화
		memberVO.setPassword(req.getParameter("password"));
		
		int result = memberService.join(memberVO);
		
		String msg = "회원가입 중 문제가 발생했습니다. 다시 시도해주세요.";
		String url = "./join";
		if (result > 0) {
			msg = "회원가입이 완료되었습니다.";
			url = "/";
		} 
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/result";
	}
}
