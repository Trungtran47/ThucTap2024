package com.example.controller.admin;

import com.example.entity.ShiftEntity;
import com.example.service.IShiftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/manage/manager/shift")
public class ShiftController {
    @Autowired
    private IShiftService shiftService;
    @GetMapping(value="/list")
    public String shifts(Model model) {
//        List<ShiftEntity> list = shiftService.getShifts();
//        if(!list.isEmpty()) {
//            model.addAttribute("shifts", list);
//        }
//        System.out.println(list);
        return "admin/shift_list";
    }



    @GetMapping("/add")
    public String addShift(Model model) {
        return "admin/shift_form";
    }
}
