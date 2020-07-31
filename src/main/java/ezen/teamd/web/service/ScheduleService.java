package ezen.teamd.web.service;

import javax.servlet.http.HttpSession;

import java.util.*;

import ezen.teamd.web.model.ScheduleVO;

public interface ScheduleService {
    public List<Map<String,Object>> loadSchedule(HttpSession session) throws Exception;

    public String saveSchedule(ScheduleVO schedule, HttpSession session) throws Exception;

    public boolean modifySchedule(ScheduleVO schedule, HttpSession session) throws Exception;

    public boolean deleteSchedule(ScheduleVO schedule) throws Exception;
}

