package ezen.teamd.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ezen.teamd.web.model.AccountVO;
import ezen.teamd.web.model.ScheduleVO;
import ezen.teamd.web.service.AccountService;
import ezen.teamd.web.service.ScheduleService;

import java.util.*;


@Controller
public class ServiceController {
    
    @Autowired
    private AccountService accountService;

    @Autowired
    private ScheduleService scheduleService;

    @RequestMapping(value="/signup", method=RequestMethod.POST)
    public String Write(Model model, AccountVO account) throws Exception {
        accountService.signup(account);
        model.addAttribute("message", "회원가입이 완료되었습니다.");
        model.addAttribute("link", "/");
        // model.addAttribute("test", account);
        // return "test";
        return "message";
    }

    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String login(Model model, AccountVO account, HttpSession session) throws Exception {
        if(accountService.login(account, session)) {
            // 로그인 성공 실제페이지는 dlwlrma
            return "redirect:dlwlrma";

        } else {
            // 로그인 실패
            model.addAttribute("message", "로그인에 실패했습니다.");
            return "message";
        }
    }
    
    @RequestMapping(value="/test")
    public String Test(Model model, HttpSession session) {
        model.addAttribute("test", session.getAttribute("Account"));
        return "test";
    }

    @ResponseBody
    @RequestMapping(value="/schedule", method=RequestMethod.POST)
    public String schedule(Model model, ScheduleVO schedule, HttpSession session) throws Exception {
        return scheduleService.saveSchedule(schedule, session);
    }

    @ResponseBody
    @RequestMapping(value="/dlwlrma", method=RequestMethod.POST)
    public List<Map<String,Object>> getSchedule(HttpSession session) throws Exception {
        return scheduleService.loadSchedule(session);
    }

    @ResponseBody
    @RequestMapping(value="/modify", method=RequestMethod.POST)
    public boolean modifySchedule(Model model, ScheduleVO schedule, HttpSession session) throws Exception {
        scheduleService.modifySchedule(schedule, session);
        return true;
    }

    @ResponseBody
    @RequestMapping(value="/delete", method=RequestMethod.POST)
    public boolean deleteSchedule(Model model, ScheduleVO schedule) throws Exception {
        scheduleService.deleteSchedule(schedule);
        return true;
    }
}