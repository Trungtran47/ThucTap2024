package com.example.controller.admin;

import com.example.entity.OrderEntity;
import com.example.service.IOrderService;
import com.example.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/manage/order-out")
public class OrderOutController {
    @Autowired
    private IOrderService iOrderService;

    @Autowired
    private IProductService iProductService;

    @GetMapping("/new")
    public String order(Model model) {
        model.addAttribute("products", iProductService.getAllProducts());
        return "admin/order_product";
    }
    @GetMapping("/list")
    public String listOrder(Model model){
        model.addAttribute("orders",iOrderService.getAllOrders());
        return "admin/order_list";
    }
    @PostMapping("/save-order")
    public String save(@ModelAttribute("order") OrderEntity order,
                       @RequestParam("userid") int userid,
                       @RequestParam("customerid") int customerid){
        try {


        }catch (Exception e){
            e.printStackTrace();
        }
        return "admin/order_list";
    }

    @GetMapping("/edit/{id}")
    public String editOrder(@PathVariable("id") Long id, Model model){
        OrderEntity orderEntity =  iOrderService.getOrderById(id);
        if (orderEntity != null) {
            model.addAttribute("order", orderEntity);
//            model.addAttribute("oderdetail", o)
        }else {
            return "";
        }
        return "redirect:/manage/order-out/new";
    }
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") Long id){
        iOrderService.deleteOrder(id);
        return "redirect:/manage/order-out/list";
    }

}
