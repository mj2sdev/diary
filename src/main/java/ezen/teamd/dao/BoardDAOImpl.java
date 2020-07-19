package ezen.teamd.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import ezen.teamd.model.Board;

@Repository
public class BoardDAOImpl implements BoardDAO {

    @Inject
    private SqlSession sqlSession;

    @Override
    public List<Board> getBoardList() throws Exception {
        return sqlSession.selectList("ezen.teamd.BoardMapper.getBoardlist");
    }

    @Override
    public Board getBoardContent(int bid) throws Exception {
        return sqlSession.selectOne("ezen.teand.BoardMapper.getBoardContent", bid);
    }

    @Override
    public int insertBoard(Board board) throws Exception {
        return sqlSession.insert("ezen.teamd.BoardMapper.insertBoard", board);
    }

    @Override
    public int updateBoard(Board board) throws Exception {
        return sqlSession.update("ezen.teamd.BoardMapper.updateBoard", board);
    }

    @Override
    public int deleteBoard(int bid) throws Exception {
        return sqlSession.delete("ezen.teamd.BoardMapper.deleteBoard", bid);
    }

    @Override
    public int updateViewCnt(int bid) throws Exception {
        return sqlSession.update("ezen.teamd.BoardMapper.updateViewCnt", bid);
    }
    
}