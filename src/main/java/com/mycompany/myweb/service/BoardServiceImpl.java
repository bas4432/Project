package com.mycompany.myweb.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mycompany.myweb.domain.BoardVO;
import com.mycompany.myweb.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	
	private final BoardDAO boardDAO;
	
	@Inject
	public BoardServiceImpl(BoardDAO boardDAO) {
		this.boardDAO = boardDAO;
	}

	@Override
	public void create(BoardVO boardVO) throws Exception {
		boardDAO.create(boardVO);
		
		
	}

	@Override
	public BoardVO read(Integer board_no) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.read(board_no);
	}

	@Override
	public void update(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("업데이트");
		boardDAO.update(boardVO);
		
	}

	@Override
	public void delete(Integer board_no) throws Exception {
		// TODO Auto-generated method stub
		boardDAO.delete(board_no);
		
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.listAll();
	}

}
