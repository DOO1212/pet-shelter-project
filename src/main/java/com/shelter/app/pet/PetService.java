package com.shelter.app.pet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shelter.app.board.BoardFileVO;
import com.shelter.app.board.BoardService;
import com.shelter.app.board.BoardVO;

@Service
public class PetService {

	@Autowired
	private PetDAO petDAO;
	
	public List<PetVO> list() throws Exception {
		return petDAO.list();
	}
	
	public PetVO detail(PetVO petVO) throws Exception {
		return petDAO.detail(petVO);
	}
	
	public int insert(PetVO petVO) throws Exception {
		return petDAO.insert(petVO);
	}
	
	public int update(PetVO petVO) throws Exception {
		return petDAO.update(petVO);
	}
	
//	public int delete(PetVO petVO) throws Exception {
//		return petDAO.delete(petVO);
//	}


}
