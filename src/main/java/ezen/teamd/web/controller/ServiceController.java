package ezen.teamd.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.teamd.web.model.AccountVO;
import ezen.teamd.web.model.ScheduleVO;
import ezen.teamd.web.service.AccountService;


@Controller
public class ServiceController {
    
    @Autowired
    private AccountService accountService;

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

    @RequestMapping(value="/schedule", method=RequestMethod.POST)
    public String schedule(Model model, ScheduleVO schedule) {
        service.
        return "test";
    }
}