package com.shelter.app.ask;

import java.time.LocalDate;

import com.shelter.app.member.MemberVO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AskVO {
	
	private Long askId;
	private String title;
	private String content;
	private LocalDate createdAt;
	private LocalDate updatedAt;
	
	private MemberVO memberVO;
	
	private Long memberId;

}
