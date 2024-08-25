package com.example.controller.admin;

import com.example.entity.ShiftDetailEntity;
import com.example.entity.ShiftEntity;
import com.example.service.IShiftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.temporal.WeekFields;
import java.util.*;

@Controller
@RequestMapping("/manage/manager/shift")
public class ShiftController {
    @Autowired
    private IShiftService shiftService;
    @GetMapping(value="/list")
    public String listShifts(Model model) {
        List<ShiftEntity> list = shiftService.getShifts();
        if(!list.isEmpty()) {
            model.addAttribute("shifts", list);
        }
        System.out.println(list);
        return "admin/shift_list";
    }
    @GetMapping(value="/api/list")
    public List<Map<String, Object>> listAPIShifts() {
        List<ShiftEntity> lists = shiftService.getShifts();

        List<Map<String, Object>> events = new ArrayList<>();
        for (ShiftEntity shift : lists) {
            Map<String, Object> event = new HashMap<>();
            event.put("id", shift.getShiftId());
            event.put("title", shift.getShiftName());
            event.put("start", shift.getStartTime().toString());
            event.put("end", shift.getEndTime().toString());
            events.add(event);
            System.out.println(event.toString());
        }

        return events;
    }
    @GetMapping("/new")
    public String addShift(Model model) {
        return "admin/shift_form";
    }
    @GetMapping("/calendar")
    public String listCalendar(Model model) {
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
        List<ShiftDetailEntity> listShiftToDay = shiftService.listShiftToDay(today);
        // Thêm ngày vào mô hình
        model.addAttribute("daysOfWeek", daysOfWeek);
        model.addAttribute("startOfWeek", startOfWeek);
        model.addAttribute("endOfWeek", endOfWeek);
        model.addAttribute("today", today);
        model.addAttribute("listShiftToDay", listShiftToDay);


        List<ShiftEntity> shifts = shiftService.getShifts();
        if(!shifts.isEmpty()) {
            model.addAttribute("shifts", shifts);
        }

        return "admin/shift_calendar";
    }
    @PostMapping("/new")
    public String addShift(@ModelAttribute ShiftEntity shift) {
        shiftService.addShift(shift);

        return "redirect:/manage/manager/shift/list";
    }
    @PostMapping("/delete/{id}")
    public String addShift(@PathVariable Long id) {
        shiftService.deleteShift(id);

        return "redirect:/manage/manager/shift/list";
    }

}
