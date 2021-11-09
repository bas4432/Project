package com.mycompany.myweb.service;

import java.util.List;

import com.mycompany.myweb.domain.BoardVO;

public interface BoardService {

	void create(BoardVO boardVO) throws Exception;

	BoardVO read(Integer board_no) throws Exception;

	void update(BoardVO boardVO) throws Exception;

	void delete(Integer board_no) throws Exception;

	List<BoardVO> listAll() throws Exception;

	

}
