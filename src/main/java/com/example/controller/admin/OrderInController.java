package com.example.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage/order-in")
public class OrderInController {
    @GetMapping("/list")
    public String listOrder(Model model){
//        model.addAttribute("orders",iOrderService.getAllOrders());
        return "admin/order_in_list";
    }
}
