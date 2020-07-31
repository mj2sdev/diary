package ezen.teamd.web.service;

import java.util.List;

import ezen.teamd.web.model.BoardVO;

public interface BoardService {
    public List<BoardVO> getBoardList() throws Exception;
}