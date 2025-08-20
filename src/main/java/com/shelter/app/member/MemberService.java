package com.shelter.app.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO login(MemberVO memberVO) {
		return memberDAO.login(memberVO);
	}
	
	public int join(MemberVO memberVO) {
		
		return memberDAO.join(memberVO);
	}
}
