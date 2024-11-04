package com.textipro.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

    @GetMapping("/")
    public String login() {
        return "login";
    }
    
    @PostMapping("/dashboard")
    public String dashBoard() {
    	System.out.println("loggere");
    	return "dash";
    }
    
//    @GetMapping("/signup")
//    public String signup() {
//        return "signup"; // Create a signup.jsp page if needed
//    }
}
