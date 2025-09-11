package com.devpro.controller.client;

import com.devpro.models.Product;
import com.devpro.service.impl.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/client/products")
public class ProductClientController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public String productPage(Model model,
                              @RequestParam(name = "page", defaultValue = "1") int page,
                              @RequestParam(name = "trade_mark", required = false)String tradeMark,
                              @RequestParam(name = "color", required = false)String color,
                              @RequestParam(name = "rom", required = false)String rom,
                              @RequestParam(name = "price", required = false)String price) {
        Pageable pageable = PageRequest.of(page-1, 6);
        Page<Product> productPage = productService.filterProduct(pageable, tradeMark, color, rom, price);
        List<Product> products =  productPage.getContent();
        int totalPages = productPage.getTotalPages();

        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        return "client/product";
    }


}
