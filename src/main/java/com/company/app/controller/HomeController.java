package com.company.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping({"/", "/home"})
    public String home(Model model) {
        model.addAttribute("title", "Home Page");
        model.addAttribute("greeting", "Welcome to the library");
        return "home";
    }
}
