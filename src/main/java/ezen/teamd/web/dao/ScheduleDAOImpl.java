package ezen.teamd.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.teamd.web.model.AccountVO;
import ezen.teamd.web.model.ScheduleVO;
import java.util.*;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<ScheduleVO> ViewSchedule(HttpSession session) throws Exception;

    @Override
    public boolean SaveSchedule(ScheduleVO schedule, AccountVO account) throws Exception{
        Map<SchduleVO, AccountVO> map = new HashMap(schedule, account);
        sqlSession.insert("ezen.teamd.web.sql.ScheduleMapper.save", map);
        return true;
    };
    
}