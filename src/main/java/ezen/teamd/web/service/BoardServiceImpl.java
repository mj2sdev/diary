package ezen.teamd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.teamd.web.dao.BoardDAO;
import ezen.teamd.web.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
    
    @Autowired
    private BoardDAO boardDAO;

    public List<BoardVO> getBoardList() throws Exception {
        return boardDAO.getBoardList();
    }
}