package com.devpro.controller.client;

import lombok.Getter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client/payment")
public class PayController {

    @GetMapping
    public String payPage(){
        return "client/checkout/payment";
    }

    @GetMapping("/address")
    public String addressPage()
    {
        return "client/checkout/address";
    }

    @GetMapping("/shipping")
    public String shippingPage()
    {
        return "client/checkout/shipping";
    }


}
