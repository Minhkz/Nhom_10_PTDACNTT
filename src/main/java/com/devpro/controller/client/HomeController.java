package com.devpro.controller.client;

import com.devpro.models.Product;
import com.devpro.service.impl.ProductService;
import com.devpro.service.specification.ProductSpec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/client/homes")
public class HomeController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public String homePage(Model model) {
        List<Product> products= productService.findAll(ProductSpec.getFeatureProduct(1));
        List<Product> products2 = productService.findAll(ProductSpec.getDiscountProduct(1));
        model.addAttribute("products",products);
        model.addAttribute("productDiss",products2);
        return "client/home";
    }
}
