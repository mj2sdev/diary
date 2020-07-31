package ezen.teamd.web.dao;

import javax.servlet.http.HttpSession;

import java.util.*;

import ezen.teamd.web.model.ScheduleVO;
import ezen.teamd.web.model.AccountVO;

public interface ScheduleDAO {

    public List<Map<String,Object>> loadSchedule(AccountVO account) throws Exception;

    public boolean saveSchedule(ScheduleVO schedule, AccountVO account) throws Exception;

    public boolean modifySchedule(ScheduleVO schedule, AccountVO account) throws Exception;

    public boolean deleteSchedule(ScheduleVO schedule) throws Exception;
}