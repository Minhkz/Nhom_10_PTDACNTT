package com.devpro.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client/productdetails")
public class ProductDetailsController {
    @GetMapping
    public String productDetailsPage() {
        return "client/productdetails";
    }
}
