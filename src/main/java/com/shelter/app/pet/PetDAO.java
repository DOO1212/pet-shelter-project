package com.shelter.app.pet;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PetDAO {
	
	public List<PetVO> list() throws Exception;
	
	public PetVO detail(PetVO petVO) throws Exception;
	
	public int insert(PetVO petVO) throws Exception;
	
	public int update(PetVO petVO) throws Exception;
	
	public int delete(PetVO petVO) throws Exception;
	
//	public int insertFile(PetFileVO petFileVO) throws Exception;
	
//	public int deleteFile(PetVO petVO) throws Exception;
	
//	public int deleteFileOne(PetVO petVO) throws Exception;
	
//	public AskFileVO detailFile(PetFileVO petFileVO) throws Exception;

}
