package com.example.controller.admin;

import com.example.entity.ShiftDetailEntity;
import com.example.entity.ShiftEntity;
import com.example.security.SecurityUtils;
import com.example.service.IShiftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.time.LocalDate;
import java.time.temporal.WeekFields;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Controller
public class HomeController {

    @Autowired
    private IShiftService shiftService;

    @GetMapping("/manage/home")
    public String home(Model model) {
        String fullName = SecurityUtils.getPrincipal().getFullName();
        String username = SecurityUtils.getPrincipal().getUsername();
        model.addAttribute("message", "Xin chào, "+fullName+"!");

        LocalDate today = LocalDate.now();
        WeekFields weekFields = WeekFields.of(Locale.getDefault());

        // Tính ngày đầu tuần và ngày cuối tuần
        LocalDate startOfWeek = today.with(weekFields.dayOfWeek(), 1);
        LocalDate endOfWeek = today.with(weekFields.dayOfWeek(), 7);

        // Lưu ngày trong tuần vào danh sách
        List<LocalDate> daysOfWeek = new ArrayList<>();
        for (int i = 0; i < 7; i++) {
            daysOfWeek.add(startOfWeek.plusDays(i));
        }
        // Thêm ngày vào mô hình
        model.addAttribute("daysOfWeek", daysOfWeek);
        model.addAttribute("startOfWeek", startOfWeek);
        model.addAttribute("endOfWeek", endOfWeek);
        model.addAttribute("today", today);

        List<ShiftDetailEntity> shiftDetailEntities = shiftService.listShiftOfEmployee(username);
        List<ShiftEntity> shifts = shiftService.getShifts();
        if(!shifts.isEmpty()) {
            model.addAttribute("shifts", shifts);

        }
        model.addAttribute("myShifts", shiftDetailEntities);
        return "admin/home";
    }


}
