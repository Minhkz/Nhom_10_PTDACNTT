package com.devpro.controller.client;

import com.devpro.models.*;
import com.devpro.repository.WishListItemRepository;
import com.devpro.repository.WishListRepository;
import com.devpro.service.impl.ProductService;
import com.devpro.service.impl.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/client/wishlist")
public class WishListController {

    @Autowired
    private UserService userService;

    @Autowired
    private WishListRepository wishListRepository;

    @Autowired
    private WishListItemRepository wishListItemRepository;

    @Autowired
    private ProductService productService;

    @GetMapping
    public String wishListPage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        User user = this.userService.getUserByEmail(email);
        Wishlist wishList = wishListRepository.findByUser(user);
        List<WishlistItem> wishlists = wishListItemRepository.findByWishlist(wishList);
        List<Product> products = wishlists.stream().map(WishlistItem::getProduct).collect(Collectors.toList());
        model.addAttribute("products", products);
        return "client/wishlists";
    }

    @PostMapping("/cancel/{id}")
    @ResponseBody
    public Map<String, Object> cancelProduct(@PathVariable("id") int id, HttpServletRequest request) {
        String email = (String) request.getSession().getAttribute("email");
        User user = this.userService.getUserByEmail(email);
        Wishlist wishList = wishListRepository.findByUser(user);
        Product product = productService.findById(id);
        Map<String, Object> response = new HashMap<>();
        WishlistItemKey wishlistItemKey = new WishlistItemKey();

        wishlistItemKey.setWishlistId(wishList.getId());
        wishlistItemKey.setProductId(product.getId());

        wishListItemRepository.deleteById(wishlistItemKey);

        response.put("status", "success");
        return response;
    }
}
