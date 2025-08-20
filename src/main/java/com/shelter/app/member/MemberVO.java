package com.shelter.app.member;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	private Long memberId;
	private String username;
	private String password;
	private String name;
	private Character gender;
	private Integer age;
	private String email;
	private String phone;
	private boolean hasPet;
	private boolean accountNonExpired;
	
	private List<RoleVO> roleVOs;
}
