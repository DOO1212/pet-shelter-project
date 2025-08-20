package com.shelter.app.board;

import java.util.List;

public interface BoardDAO {
	
public List<BoardVO> list() throws Exception;
	
	public Long totalCount() throws Exception;
	
	public BoardVO detail(BoardVO boardVO) throws Exception;
	
	public int insert(BoardVO boardVO) throws Exception;
	
	public int insertFile(BoardFileVO boardFileVO) throws Exception;
	
	public int update(BoardVO boardVO) throws Exception;
	
	public int delete(BoardVO boardVO) throws Exception;
	
	public int deleteFile(BoardVO boardVO) throws Exception;
	
	public int deleteFileOne(BoardVO boardVO) throws Exception;
	
	public BoardFileVO detailFile(BoardFileVO boardFileVO) throws Exception;

}
