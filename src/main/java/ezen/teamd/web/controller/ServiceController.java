package ezen.teamd.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ezen.teamd.web.model.AccountVO;
import ezen.teamd.web.model.scheduleVO;
import ezen.teamd.web.service.BoardService;


@Controller
public class ServiceController {
    
    @Autowired
    private BoardService boardService;

    @RequestMapping("/login")
    public String Login(Model model, AccountVO account) {
        String target = account.toString();
        model.addAttribute("test", target);
        // 세션에 정보 추가 
        return "test"; //logined 
        
    }

    @RequestMapping(value="/write", method=RequestMethod.GET)
    public String Write(Model model, scheduleVO schedule) {
        model.addAttribute("test", schedule);
        return "test";
    }
    
    @RequestMapping(value="/test")
    public String Test(Model model, HttpSession session) {
        model.addAttribute("test", session.getAttribute("id"));
        return "test";
    }
}