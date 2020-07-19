package ezen.teamd.dao;

import java.util.List;

import ezen.teamd.model.Board;

public interface BoardDAO {
    public List<Board> getBoardList() throws Exception;

    public Board getBoardContent(int bid) throws Exception;

    public int insertBoard(Board board) throws Exception;

    public int updateBoard(Board board) throws Exception;

    public int deleteBoard(int bid) throws Exception;

    public int updateViewCnt(int bid) throws Exception;
}