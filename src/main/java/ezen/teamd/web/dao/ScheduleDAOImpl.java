package ezen.teamd.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.commons.beanutils.BeanUtils;
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
    public List<Map<String,Object>> loadSchedule(AccountVO account) throws Exception {
        return sqlSession.selectList("ezen.teamd.web.sql.ScheduleMapper.load", account);
    }

    @Override
    public boolean saveSchedule(ScheduleVO schedule, AccountVO account) throws Exception{
        Map<String, String> data = BeanUtils.describe(schedule);
        data.putAll(BeanUtils.describe(account));
        sqlSession.insert("ezen.teamd.web.sql.ScheduleMapper.save", data);
        return true;
    }
    
    @Override
    public boolean modifySchedule(ScheduleVO schedule, AccountVO account) throws Exception {
        Map<String, String> data = BeanUtils.describe(schedule);
        data.putAll(BeanUtils.describe(account));
        sqlSession.insert("ezen.teamd.web.sql.ScheduleMapper.modify", data);
        return true;
    }
    @Override
    public boolean deleteSchedule(ScheduleVO schedule) throws Exception {
        sqlSession.delete("ezen.teamd.web.sql.ScheduleMapper.delete", schedule);
        return true;
    }
}