package ezen.teamd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    
    @RequestMapping("/")
    public String Hello(Model model) {
        model.addAttribute("greeting", " 안녕하세요");
        return "home";
    }
}