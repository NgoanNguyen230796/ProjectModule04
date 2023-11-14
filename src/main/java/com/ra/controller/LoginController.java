package com.ra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/loginController")
public class LoginController {
    @GetMapping(value = "/login")
    public ModelAndView loginForm() {
        ModelAndView mav = new ModelAndView("login");
        return mav;
    }
}
