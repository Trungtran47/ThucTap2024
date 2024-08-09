package com.example.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("/login")
    public String home(Model model) {
        model.addAttribute("message", "Hello, Thymeleaf!");
        return "admin/home";
    }
}
