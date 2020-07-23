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
        session.setAttribute("id", "bh");
        return "home";
    }

    @RequestMapping(value="/signup", method=RequestMethod.GET)
    public String Signup(Model model) throws Exception {
        return "signup";
    }

    @RequestMapping(value="/dlwlrma", method=RequestMethod.GET)
    public String dlwlrma(Model model) throws Exception {
        return "dlwlrma";
    }
}