package com.devpro.controller.admin;

import com.devpro.models.Address;
import com.devpro.models.Order;
import com.devpro.models.OrderProduct;
import com.devpro.repository.AddressRepository;
import com.devpro.repository.OrderProductRepository;
import com.devpro.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/orders")
public class OrderController {
    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderProductRepository orderProductRepository;

    @Autowired
    private AddressRepository addressRepository;

    @GetMapping
    public String orderPage(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
        Pageable pageable = PageRequest.of(page -1, 5, Sort.by("id").descending());
        Page<Order> orderPage = orderPage = orderRepository.findAll(pageable);

        List<Order> orders = orderPage.getContent();
        model.addAttribute("currentPage", page);
        model.addAttribute("orders", orders);
        int totalPages = orderPage.getTotalPages();
        if (totalPages == 0) {
            totalPages = 1;
        }
        model.addAttribute("totalPages", totalPages);
        return "admin/orders/order";
    }

    @GetMapping("/views/{id}")
    public String viewOrderPage(Model model, @PathVariable("id") int id) {
        Order order = orderRepository.findById(id).get();
        Address address = this.addressRepository.findById(order.getAddress().getId()).get();
        List<OrderProduct> orderProducts = order.getOrderProducts();
        model.addAttribute("address", address);
        model.addAttribute("order", order);
        model.addAttribute("orderProducts", orderProducts);
        return "admin/orders/view";
    }

    @GetMapping("/updates/{id}")
    public String updateOrderPage(Model model, @PathVariable("id") int id) {
        Order order = orderRepository.findById(id).get();
        model.addAttribute("updateOrder", order);
        return "admin/orders/update";
    }

    @PostMapping("/update")
    public String updateOrder(@ModelAttribute("updateOrder") Order order) {
        Order updateOrder = orderRepository.findById(order.getId()).get();
        updateOrder.setStatus(order.getStatus());
        orderRepository.save(updateOrder);
        return "redirect:/admin/orders";
    }

    @GetMapping("/deletes/{id}")
    public String deleteOrder(@PathVariable("id") int id) {
        orderRepository.deleteById(id);
        return "redirect:/admin/orders";
    }
}
