package ezen.teamd.web.dao;

import java.util.List;

import ezen.teamd.web.model.ScheduleVO;

public interface ScheduleDAO {

    public List<ScheduleVO> ViewSchedule(HttpSession session) throws Exception;

    public boolean SaveSchedule(ScheduleVO schedule, AccountVO account) throws Exception;
}