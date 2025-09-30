package com.devpro.controller.client;

import com.devpro.models.*;
import com.devpro.repository.AddressRepository;
import com.devpro.repository.CartItemRepository;
import com.devpro.repository.CartRepository;
import com.devpro.service.impl.ProductService;
import com.devpro.service.impl.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static com.devpro.models.User_.cart;
import static com.devpro.models.User_.id;

@Controller
@RequestMapping("/client/payment")
public class PayController {

    @Autowired
    private UserService userService;

    @Autowired
    private AddressRepository addressRepository;

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private CartItemRepository cartItemRepository;

    @Autowired
    private ProductService  productService;

    @PostMapping
    public String payPage(@RequestParam("shipping") String typeShip, HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        List<CartProduct> cartProducts = (List<CartProduct>) session.getAttribute("checkoutProducts");
        Address address = this.addressRepository.findById((Integer) session.getAttribute("address") ).get();
        Double thue = 5000.0;
        Double subTotal = 0.0;
        for (CartProduct cartProduct : cartProducts) {
            subTotal += cartProduct.getProduct().getPrice()*cartProduct.getQuantity();
        }

        Double total = subTotal + thue + Double.parseDouble(typeShip);
        session.setAttribute("total", total);
        model.addAttribute("products", cartProducts);
        model.addAttribute("typeShip", Integer.parseInt(typeShip));
        model.addAttribute("address", address);
        model.addAttribute("total", total);
        model.addAttribute("subTotal", subTotal);
        model.addAttribute("thue", thue);
        return "client/checkout/payment";
    }

    //Address
    @PostMapping("/address")
    public String addressPage(Model model,
                              HttpServletRequest request,
                              @RequestParam("selectedIds") String selectedIds,
                              @RequestParam(value = "returnUrl", required = false) String urlBefore) {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");


        Map<Integer, Integer> productQuantities = Arrays.stream(selectedIds.split(","))
                .map(pair -> pair.split(":"))
                .collect(Collectors.toMap(
                        arr -> Integer.parseInt(arr[0]),
                        arr -> Integer.parseInt(arr[1])
                ));

        User user = this.userService.getUserByEmail(email);
        if (user != null) {

            List<Address> addresses = this.addressRepository.findByUser(user);


            Cart cart = cartRepository.findByUser(user);
            List<CartProduct> cartProducts = cart.getCartProducts();


            List<CartProduct> selectedProducts = cartProducts.stream()
                    .filter(p -> productQuantities.containsKey(p.getProduct().getId()))
                    .peek(p -> {
                        Integer newQty = productQuantities.get(p.getProduct().getId());
                        p.setQuantity(newQty);
                    })
                    .toList();


            session.setAttribute("checkoutProducts", selectedProducts);
            session.setAttribute("checkoutQuantities", productQuantities);


            model.addAttribute("addresses", addresses);
        }
        model.addAttribute("returnUrl", urlBefore);
        return "client/checkout/addresses/address";
    }
    @GetMapping("/address")
    public String addressGEtPage(Model model,
                              HttpServletRequest request
                              ) {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        User user = this.userService.getUserByEmail(email);
        if (user != null) {
            List<Address> addresses = this.addressRepository.findByUser(user);

            model.addAttribute("addresses", addresses);
        }

        return "client/checkout/addresses/address";
    }

    @GetMapping("/address/creates")
    public String pageCreateAddress(Model model)
    {
        Address address = new Address();
        model.addAttribute("newAddress",address);
        return  "client/checkout/addresses/create";
    }

    @PostMapping("/address/create")
    public String createAddress(@ModelAttribute("newAddress") Address address, HttpServletRequest request)
    {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        User user = this.userService.getUserByEmail(email);
        if(user!=null){
            address.setUser(user);
        }
        this.addressRepository.save(address);
        return "redirect:/client/payment/address";
    }

    @GetMapping("/address/updates/{id}")
    public String pageUpdateAddress(@PathVariable("id") int id, Model model)
    {
        Address address = this.addressRepository.findById(id);
        model.addAttribute("updateAddress",address);
        return "client/checkout/addresses/update";
    }

    @PostMapping("/address/update")
    public String updateAddress(@ModelAttribute("updateAddress") Address address)
    {
        Address oldAddress = this.addressRepository.findById(address.getId()).get();
        if(oldAddress!=null){
            oldAddress.setLocation(address.getLocation());
            oldAddress.setDetailDesc(address.getDetailDesc());
            oldAddress.setShortDesc(address.getShortDesc());
            this.addressRepository.save(oldAddress);
        }
        return "redirect:/client/payment/address";
    }

    @GetMapping("/address/deletes/{id}")
    public String deleteAddress(@PathVariable("id") int id)
    {
        this.addressRepository.deleteById(id);
        return "redirect:/client/payment/address";
    }
//Shipping
    @PostMapping("/shipping")
    public String shippingPage(@RequestParam("addressId") String addressId, HttpServletRequest request)
    {
        HttpSession session = request.getSession();
        session.setAttribute("address",Integer.parseInt(addressId));
        return "client/checkout/shipping";
    }
    @GetMapping("/get/shipping")
    public String shippingGetPage()
    {
        return "client/checkout/shipping";
    }

    @GetMapping("/checkout/success")
    public  String checkoutSuccessPage()
    {
        return "client/checkout/checkoutsuccess";
    }


    @PostMapping("/checkout")
    public String checkout(@RequestParam("paymentMethod") String paymentType, HttpServletRequest request)
    {
        HttpSession session = request.getSession();
        User currentUser = new User();
        int id = (int) session.getAttribute("id");
        currentUser.setId(id);
        Address address = this.addressRepository.findById ((Integer) session.getAttribute("address")).get();
        if (paymentType.equals("COD")) {
            this.productService.handlePlaceOrder(currentUser, address, session);
        }
        return "redirect:/client/payment/checkout/success";
    }

}
