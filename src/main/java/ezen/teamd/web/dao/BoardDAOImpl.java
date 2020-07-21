package ezen.teamd.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.teamd.web.model.BoardVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<BoardVO> getBoardList() throws Exception {
        return sqlSession.selectList("ezen.teamd.web.board.BoardMapper.getBoardList");
    }

    @Override
    public BoardVO getBoardContent(int bid) throws Exception {
        return sqlSession.selectOne("ezen.teamd.web.board.BoardMapper.getBoardContent", bid);
    }

    @Override
    public int insertBoard(BoardVO boardVO) throws Exception {
        return sqlSession.insert("ezen.teamd.web.board.BoardMapper.insertBoard", boardVO);
    }

    @Override
    public int updateBoard(BoardVO boardVO) throws Exception {
        return sqlSession.update("ezen.teamd.web.board.BoardMapper.updateBoard", boardVO);
    }

    @Override
    public int deleteBoard(int bid) throws Exception {
        return sqlSession.insert("ezen.teamd.web.board.BoardMapper.deleteBoard", bid);
        // return sqlSession.delete("ezen.teamd.web.board.BoardMapper.deleteBoard", bid);
    }

    @Override
    public int updateViewCnt(int bid) throws Exception {
        return sqlSession.update("ezen.teamd.web.board.BoardMapper.updateViewCnt", bid);
    }
    
}