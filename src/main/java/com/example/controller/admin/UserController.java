package com.example.controller.admin;

import com.example.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    @Autowired
    private UserRepository userRepository;


    @GetMapping("/login")
    public String home(Model model) {
        model.addAttribute("message", "Hello, Thymeleaf!");
        return "login";
    }

    @GetMapping("/access-denied")
    public String accessDenied(Model model) {
        model.addAttribute("message", "Hello, Thymeleaf!");
        return "login";
    }
}
