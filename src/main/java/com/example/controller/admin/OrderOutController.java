package com.example.controller.admin;

import com.example.entity.OrderEntity;
import com.example.service.IOrderService;
import com.example.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping
public class OrderController {
    @Autowired
    private IOrderService iOrderService;

    @Autowired
    private IProductService iProductService;

        @GetMapping("/manage/orderproduct")
    public String order(Model model) {
        model.addAttribute("products", iProductService.getAllProducts());
        return "admin/order_product";
    }
    @GetMapping("/manage/order-list")
    public String listOrder(Model model){
        model.addAttribute("orders",iOrderService.getAllOrders());
        return "admin/order_list";
    }
    @PostMapping("/manage/saveOrder")
    public String save(@ModelAttribute("order") OrderEntity order,
                       @RequestParam("userid") int userid,
                       @RequestParam("customerid") int customerid){
        try {


        }catch (Exception e){
            e.printStackTrace();
        }
        return "admin/order_list";
    }

    @GetMapping("/manage/order/edit/{id}")
    public String editOrder(@PathVariable("id") Long id, Model model){
        OrderEntity orderEntity =  iOrderService.getOrderById(id);
        if (orderEntity != null) {
            model.addAttribute("order", orderEntity);
//            model.addAttribute("oderdetail", o)
        }else {
            return "";
        }
        return "redirect:/manage/orderproduct";
    }
    @GetMapping("/manage/order/delete/{id}")
    public String delete(@PathVariable("id") Long id){
        iOrderService.deleteOrder(id);
        return "redirect:/manage/order_list";
    }

}
