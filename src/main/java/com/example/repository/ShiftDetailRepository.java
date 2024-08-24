package com.example.repository;

import com.example.entity.ShiftDetailEntity;
import com.example.entity.ShiftEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ShiftDetailRepository extends JpaRepository<ShiftDetailEntity, Long> {
    List<ShiftDetailEntity> findAllByShift(ShiftEntity shift);
}
