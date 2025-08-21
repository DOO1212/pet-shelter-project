package com.shelter.app.ask;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AskVO {
	
	private Long askId;
	private Long memberId;
	private String title;
	private String content;
	private LocalDate createdAt;
	private LocalDate updatedAt;

}
