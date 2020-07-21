package ezen.teamd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.teamd.web.service.BoardService;


@Controller
public class HomeController {
    
    @Autowired
    private BoardService boardService;

    @RequestMapping("/")
    public String Hello(Model model) throws Exception {
        model.addAttribute("greeting", boardService.getBoardList());
        // model.addAttribute("greeting", "Hello");
        return "home";
    }
}