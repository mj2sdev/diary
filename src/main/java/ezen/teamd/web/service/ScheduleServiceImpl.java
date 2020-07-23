package ezen.teamd.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.teamd.web.dao.ScheduleDAO;
import ezen.teamd.web.model.ScheduleVO;
import ezen.teamd.web.model.AccountVO;

@Service
public class ScheduleServiceImpl implements ScheduleService{
    
    @Autowired
    private ScheduleDAO scheduleDAO;

    public List<ScheduleVO> ViewSchedule(HttpSession session) throws Exception;

    public boolean SaveSchedule(ScheduleVO schedule, HttpSession session) throws Exception{
        return scheduleDAO.SaveSchedule(schedule, ((AccountVO) session.getAttribute("Account")));
    };
}