package com.devpro.controller.client;

import com.devpro.dto.user.UserDto;
import com.devpro.models.Product;
import com.devpro.models.User;
import com.devpro.service.impl.ProductService;
import com.devpro.service.impl.RoleService;
import com.devpro.service.impl.UserService;
import com.devpro.service.specification.ProductSpec;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/client/homes")
public class HomeController {

    @Autowired
    private ProductService productService;

    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private RoleService roleService;

    @GetMapping
    public String homePage(Model model) {
        List<Product> products= productService.findAll(ProductSpec.getFeatureProduct(1));
        List<Product> products2 = productService.findAll(ProductSpec.getDiscountProduct(1));
        model.addAttribute("products",products);
        model.addAttribute("productDiss",products2);
        return "client/home";
    }
    @GetMapping("/signin")
    public String signIn() {

        return "client/signin";
    }
    @GetMapping("/signup")
    public String signUp(Model model) {
        model.addAttribute("signUp", new UserDto());
        return "client/signup";
    }
    @PostMapping("/signup-create")
    public String signUp(Model model, @ModelAttribute("signUp") @Valid UserDto signUp,
                         BindingResult bindingResult) {
        List<FieldError> errors = bindingResult.getFieldErrors();
        for (FieldError error : errors ) {
            System.out.println (error.getField() + " - " + error.getDefaultMessage());
        }

        if (bindingResult.hasErrors()) {
            return "client/signup";
        }
        User user = new User();
        String hashPassword = this.passwordEncoder.encode(signUp.getPassword());
        user.setPassword(hashPassword);
        user.setUsername(signUp.getUsername());
        user.setEmail(signUp.getEmail());
        user.setRole(roleService.findByName("USER"));
        user.setAddress(signUp.getAddress());
        user.setFullName(signUp.getFullName());
        user.setPhone(signUp.getPhone());
        userService.save(user);
        return "redirect:/client/homes/signin";
    }
}
