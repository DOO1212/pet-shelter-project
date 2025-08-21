package com.shelter.app.ask;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AskService {
	
	@Autowired
	private AskDAO askDAO;
	
	public List<AskVO> list()throws Exception {
		return askDAO.list();		
	}
	
	public AskVO detail(AskVO askVO) throws Exception {
		return askDAO.detail(askVO);		
	}
	
	public int insert(AskVO askVO) throws Exception {
		return askDAO.insert(askVO);		
	}
	
//	public int update(AskVO askVO) throws Exception {
//		return 0;		
//	}
	
//	public int delete(AskVO askVO) throws Exception {
//		return 0;		
//	}
	


}
