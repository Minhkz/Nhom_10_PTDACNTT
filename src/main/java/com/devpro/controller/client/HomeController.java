package com.devpro.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client/homes")
public class HomeController {
    @GetMapping
    public String homePage(){
        return "client/home";
    }
}
