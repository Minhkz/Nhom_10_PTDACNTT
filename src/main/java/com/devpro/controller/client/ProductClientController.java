package com.devpro.controller.client;

import com.devpro.models.Product;
import com.devpro.models.User;
import com.devpro.models.Wishlist;
import com.devpro.models.WishlistItem;
import com.devpro.repository.WishListItemRepository;
import com.devpro.repository.WishListRepository;
import com.devpro.service.impl.ProductService;
import com.devpro.service.impl.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/client/products")
public class ProductClientController {

    @Autowired
    private ProductService productService;

    @Autowired
    private UserService userService;

    @Autowired
    private WishListRepository wishListRepository;

    @Autowired
    private WishListItemRepository wishListItemRepository;

    @GetMapping
    public String productPage(Model model,
                              @RequestParam(name = "page", defaultValue = "1") int page,
                              @RequestParam(name = "trade_mark", required = false)String tradeMark,
                              @RequestParam(name = "color", required = false)String color,
                              @RequestParam(name = "rom", required = false)String rom,
                              @RequestParam(name = "price", required = false)String price,
                              HttpServletRequest request) {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        Set<Integer> wishListItemIds = new HashSet<>();
        if (email != null) {
            User user = userService.getUserByEmail(email);
            Wishlist  wishlist = wishListRepository.findByUser(user);

            if (wishlist != null) {
                wishListItemIds = wishlist.getWishlistItems()
                        .stream()
                        .map(item -> item.getProduct().getId())
                        .collect(Collectors.toSet());
            }

        }

        Pageable pageable = PageRequest.of(page-1, 6);
        Page<Product> productPage = productService.filterProduct(pageable, tradeMark, color, rom, price);
        List<Product> products =  productPage.getContent();
        int totalPages = productPage.getTotalPages();

        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("wishlistId", wishListItemIds);
        return "client/product";
    }


}
