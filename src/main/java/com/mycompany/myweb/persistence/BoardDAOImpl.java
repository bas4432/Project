package com.mycompany.myweb.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mycompany.myweb.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	private static final String NAMESPACE = "com.mycompany.myweb.mappers.article.boardMapper";
	
	//단 이때 주의해야 할 점이 있다면 ArticleDAOImpl 클래스의 NAMESPACE 변수에 정의된 String값과 mapper 파일의 namespace 값은 일치


	private final SqlSession sqlSession;

	@Inject 
	public BoardDAOImpl(SqlSession sqlSession) { 
		
		this.sqlSession = sqlSession; 
	}

	@Override
	public void create(BoardVO boardVO) throws Exception {
		sqlSession.insert(NAMESPACE + ".create", boardVO);

		
}

	@Override
	public BoardVO read(Integer board_no) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".read", board_no);
    }

	@Override
	public void update(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE+ ".update", boardVO);
	}

	@Override
	public void delete(Integer board_no) throws Exception {
		// TODO Auto-generated method stub
        sqlSession.delete(NAMESPACE+ ".delete", board_no);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		 return sqlSession.selectList(NAMESPACE + ".listAll");
    }

}
