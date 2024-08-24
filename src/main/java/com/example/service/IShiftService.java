package com.example.service;

import com.example.entity.ShiftDetailEntity;
import com.example.entity.ShiftEntity;
import com.example.repository.ShiftRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


public interface IShiftService {
    public List<ShiftEntity> getShifts();
    public ShiftEntity getShift(Long id);
    public ShiftEntity addShift(ShiftEntity shift);
    public void deleteShift(Long id);

    List<ShiftDetailEntity> getDetailShift(Long shiftID);



}
