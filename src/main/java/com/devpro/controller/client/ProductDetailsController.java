package com.devpro.controller.client;

import com.devpro.models.Product;
import com.devpro.service.impl.ProductService;
import com.devpro.service.specification.ProductSpec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/client/productdetails")
public class ProductDetailsController {

    @Autowired
    private ProductService productService;

    @GetMapping("/{id}")
    public String productDetailsPage(Model model, @PathVariable("id")int id) {
         Product product= productService.findById(id);
         String category = product.getCategory().getName();
         List<Product> products = productService.findAll(ProductSpec.getCategoryProduct(category));
         model.addAttribute("productd",product);
         model.addAttribute("products",products);
         return "client/productdetails";
    }
}
