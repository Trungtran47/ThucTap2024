package com.example.service.impl;

import com.example.entity.ShiftDetailEntity;
import com.example.entity.ShiftEntity;
import com.example.repository.ShiftDetailRepository;
import com.example.repository.ShiftRepository;
import com.example.service.IShiftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShiftServiceImp implements IShiftService {

    @Autowired
    private ShiftRepository shiftRepository;
    @Autowired
    private ShiftDetailRepository shiftDetailRepository;


    @Override
    public List<ShiftEntity> getShifts() {
        return shiftRepository.findAll();
    }

    @Override
    public ShiftEntity getShift(Long id) {
        return shiftRepository.findById(id).orElse(null);
    }

    @Override
    public ShiftEntity addShift(ShiftEntity shift) {
        return shiftRepository.save(shift);
    }

    @Override
    public void deleteShift(Long id) {
        shiftRepository.deleteById(id);
    }

    @Override
    public List<ShiftDetailEntity> getDetailShift(Long shiftID) {
        ShiftEntity shift = shiftRepository.getReferenceById(shiftID);
        return shiftDetailRepository.findAllByShift(shift);
    }

}
