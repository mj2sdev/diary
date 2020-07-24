package ezen.teamd.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewController {

    @RequestMapping("/")
    public String Hello(Model model, HttpSession session) throws Exception {
        return session.getAttribute("Account") == null ? "home" : "dlwlrma";
    }

    @RequestMapping(value="/signup", method=RequestMethod.GET)
    public String Signup(Model model) throws Exception {
        return "signup";
    }

    @RequestMapping(value="/dlwlrma", method=RequestMethod.GET)
    public String dlwlrma(Model model, HttpSession session) throws Exception {
        model.addAttribute("message", "로그인 후 접속하세요");
        model.addAttribute("link", "/");
        return session.getAttribute("Account") != null ? "dlwlrma" : "message";
    }

    @RequestMapping(value="/logout", method=RequestMethod.GET)
    public String logout(Model model, HttpSession session) throws Exception {
        session.invalidate();
        model.addAttribute("message", "로그아웃 되었습니다.");
        model.addAttribute("link", "/");
        return "message";
    }
}