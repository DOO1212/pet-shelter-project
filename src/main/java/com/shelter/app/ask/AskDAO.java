package com.shelter.app.ask;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AskDAO {
	
	public List<AskVO> list() throws Exception;
	
	public AskVO detail(AskVO askVO) throws Exception;
	
	public int insert(AskVO askVO) throws Exception;	
	
	public int update(AskVO askVO) throws Exception;
	
	public int delete(AskVO askVO) throws Exception;
	
//	public int insertFile(AskFileVO askFileVO) throws Exception;
	
//	public int deleteFile(AskVO askVO) throws Exception;
	
//	public int deleteFileOne(AskVO askVO) throws Exception;
	
//	public AskFileVO detailFile(AskFileVO askFileVO) throws Exception;

}
