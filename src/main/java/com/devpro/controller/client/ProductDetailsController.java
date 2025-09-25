package com.devpro.controller.client;

import com.devpro.models.Product;
import com.devpro.models.User;
import com.devpro.repository.CartItemRepository;
import com.devpro.repository.CartRepository;
import com.devpro.service.impl.ProductService;
import com.devpro.service.impl.UserService;
import com.devpro.service.specification.ProductSpec;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/client/productdetails")
public class ProductDetailsController {

    @Autowired
    private ProductService productService;

    @Autowired
    private UserService userService;

    @Autowired
    private CartRepository  cartRepository;

    @Autowired
    private CartItemRepository cartItemRepository;

    @GetMapping("/{id}")
    public String productDetailsPage(Model model, @PathVariable("id")int id) {
         Product product= productService.findById(id);
         String category = product.getCategory().getName();
         List<Product> products = productService.findAll(ProductSpec.getCategoryProduct(category));
         model.addAttribute("productd",product);
         model.addAttribute("products",products);
         return "client/productdetails";
    }

    @PostMapping("/add-to-wishlist/{id}")
    @ResponseBody
    public Map<String, Object> addToWishlist(@PathVariable("id")int id, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        Map<String, Object> repone = new HashMap<>();
        repone.put("status", this.productService.addProductToWishlist(email, id)?"success":"error");
        return repone;
    }

    @PostMapping("/add-to-cart/{id}")
    @ResponseBody
    public Map<String, Object> addToCart(@PathVariable("id")int id, @RequestParam(name = "quantity", required = false)int quantity, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        Map<String, Object> response = new HashMap<>();
        response.put("status", this.productService.handleProductToCart(email, id, session, quantity)?"success":"error");
        response.put("count", (Integer)session.getAttribute("sum"));
        return  response;
    }


}
