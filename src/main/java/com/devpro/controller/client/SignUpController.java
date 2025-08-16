package com.devpro.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client/signup")
public class SignUpController {
    @GetMapping
    public String signUp(){
        return "client/signup";
    }
}
