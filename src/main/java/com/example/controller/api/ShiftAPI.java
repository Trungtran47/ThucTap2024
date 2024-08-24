package com.example.controller.api;

import com.example.entity.ShiftDetailEntity;
import com.example.service.IShiftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/manage/manager/shift/api")
public class ShiftAPI {
    @Autowired
    private IShiftService shiftService;
    @GetMapping(value="/detail/{shiftID}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<ShiftDetailEntity>> listShiftDetailApi(@PathVariable Long shiftID){
        List<ShiftDetailEntity> shiftDetailEntities = shiftService.getDetailShift(shiftID);
        System.out.println(shiftDetailEntities);
        return ResponseEntity.ok(shiftDetailEntities);
    }

}
