package ezen.teamd.web.service;

import java.util.List;

import ezen.teamd.web.model.ScheduleVO;

public interface ScheduleService {
    public List<ScheduleVO> ViewSchedule(HttpSession session) throws Exception;

    public boolean SaveSchedule(ScheduleVO schedule, HttpSession session) throws Exception;
}