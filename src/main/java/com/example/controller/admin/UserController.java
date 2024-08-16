package com.example.controller.admin;

import com.example.dto.UserDTO;
import com.example.entity.ProductEntity;
import com.example.repository.UserRepository;
import com.example.service.IUserService;
import com.example.service.impl.UserServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    @Autowired
    private IUserService userService;


    @GetMapping("/login")
    public String home(Model model) {
        model.addAttribute("message", "Hello, Thymeleaf!");
        return "login";
    }

    @GetMapping("/logout")
    public String logout() {
        // Nếu cần, thực hiện các hành động khi người dùng yêu cầu đăng xuất
        return "redirect:/login?logout";
    }
    @GetMapping("/manage/profile")
    public String profile() {
        // Nếu cần, thực hiện các hành động khi người dùng yêu cầu đăng xuất
        return "admin/profile";
    }


    @GetMapping("/accessDenied")
    public String accessDenied(Model model) {
        model.addAttribute("message", "Hello, Thymeleaf!");
        return "login";
    }
    @GetMapping("/manage/admin/employee/list")
    public String listEmployee(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "limit" , required = false) Integer limit, Model model ) {

        UserDTO userDTO = new UserDTO();

        if(page != null && limit != null){
            userDTO.setPage(page);
            userDTO.setLimit(limit);
            Pageable pageable = PageRequest.of(page-1, limit);
            userDTO.setListResult(userService.findAll(pageable));
            userDTO.setTotalItem(userService.getTotalItem());
            userDTO.setTotalPage((int) Math.ceil((double) userDTO.getTotalItem() / userDTO.getLimit()));
        }else {
            userDTO.setListResult(userService.findAll());
        }

        model.addAttribute("users", userDTO);
        return "admin/employee_list";
    }

    @GetMapping("/manage/admin/employee/new")
    public String showCreateForm(Model model) {
      model.addAttribute("managers", userService.getAllManager());
        return "admin/employee_form";
    }


}
