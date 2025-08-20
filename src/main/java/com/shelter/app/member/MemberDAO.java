package com.shelter.app.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	public MemberVO login(MemberVO memberVO);
	public int join(MemberVO memberVO);
}
