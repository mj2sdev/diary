package ezen.teamd.web.service;

import javax.servlet.http.HttpSession;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.teamd.web.dao.ScheduleDAO;
import ezen.teamd.web.model.ScheduleVO;
import ezen.teamd.web.model.AccountVO;

@Service
public class ScheduleServiceImpl implements ScheduleService{
    
    @Autowired
    private ScheduleDAO scheduleDAO;

    public List<Map<String,Object>> loadSchedule(HttpSession session) throws Exception { 
        List<Map<String,Object>> test = scheduleDAO.loadSchedule((AccountVO) session.getAttribute("Account"));
        return test;
    }

    public String saveSchedule(ScheduleVO schedule, HttpSession session) throws Exception{
        schedule.setScheduleid(UUID.randomUUID().toString());
        scheduleDAO.saveSchedule(schedule, (AccountVO) session.getAttribute("Account"));
        return schedule.getScheduleid();
    };

    public boolean modifySchedule(ScheduleVO schedule, HttpSession session) throws Exception {
        return scheduleDAO.modifySchedule(schedule, (AccountVO) session.getAttribute("Account"));
    }

    public boolean deleteSchedule(ScheduleVO schedule) throws Exception {
        return scheduleDAO.deleteSchedule(schedule);
    }
}