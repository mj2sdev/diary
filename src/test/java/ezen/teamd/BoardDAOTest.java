package ezen.teamd;

import java.util.List;

import javax.inject.Inject;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ezen.teamd.dao.BoardDAO;
import ezen.teamd.model.Board;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/root-context.xml", "classpath:spring/dataSource-context.xml"})
public class BoardDAOTest {
    private static final Logger logger = LoggerFactory.getLogger(BoardDAOTest.class);

    @Inject
    private BoardDAO boardDAO;

    @Test @Ignore
    public void testGetBoardList() throws Exception {
        List<Board> boardList = boardDAO.getBoardList();
        logger.info("\n BoardList \n");
        if (boardList.size() > 0) {
            for (Board list : boardList) {
                logger.info(list.getTitle());
            }
        } else {
            logger.info("empty data");
        }
    }

    @Test @Ignore
    public void testGetBoardContent() throws Exception {
        Board board = boardDAO.getBoardContent(1);
        logger.info("\n Board List \n");
        if (board != null) {
            logger.info("num : " + board.getBid());
            logger.info("title : " + board.getTitle());
            logger.info("content : " + board.getContent());
        } else {
            logger.info("data empty");
        }
    }

    @Test @Ignore
    public void testUpdateBoard() throws Exception {
        Board board = new Board();
        board.setBid(1);
        board.setCate_cd("1");
        board.setTitle("first posts fixed");
        board.setContent("lorem ipsum fixed");
        board.setTag("1-1");

        int result = boardDAO.updateBoard(board);
        logger.info("\n Update Board Result \n");
        if (result > 0) logger.info("update success");
        else logger.info("update failed");
    }

    @Test @Ignore
    public void tesDeleteBoard() throws Exception {
        int result = boardDAO.deleteBoard(1);
        logger.info("\n Delete Board REsult \n");
        if (result > 0) logger.info("\n delete success");
        else logger.info("\n delete failed");
    }

    @Test @Ignore
    public void testUpdateViewCnt() throws Exception {
        int result = boardDAO.updateViewCnt(1);
        logger.info("\n Update View Count Result \n");
        if (result > 0) logger.info("\n view count update success");
        else logger.info("\n ciew count update failed");
    }

    @Test
    public void testInsertBoard() throws Exception {
        Board board = new Board();
        board.setCate_cd("1");
        board.setTitle("first posts");
        board.setContent("first lorem");
        board.setTag("1");
        board.setReg_id("1");

        int result = boardDAO.insertBoard(board);
        logger.info("\n Insert Board Result " + result);
        if (result == 1) logger.info("\n board insert success");
        else logger.info("\n board insert failed");
    }
}