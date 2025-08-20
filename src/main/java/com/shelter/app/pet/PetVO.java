package com.shelter.app.pet;

import java.time.LocalDate;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PetVO {
	
	private Long petId;
	private String publicNumber;
	private LocalDate publicDate;
	private String breed;
	private String petGender;
	private Integer isNeutered;
	private Integer age;
	private Double weight;
	private String feature;
	private String vaccination;
	private Integer isAdopted;	

}
