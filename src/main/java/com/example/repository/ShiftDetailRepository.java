package com.example.repository;

import com.example.entity.ShiftDetailEntity;
import com.example.entity.ShiftEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

public interface ShiftDetailRepository extends JpaRepository<ShiftDetailEntity, Long> {
    List<ShiftDetailEntity> findAllByShiftAndDate(ShiftEntity shift, LocalDate date);
    @Query("SELECT sd FROM ShiftDetailEntity sd WHERE sd.date = :date ORDER BY sd.shift.startTime ASC")
    List<ShiftDetailEntity> findAllByDateOrderByShiftStartTime(LocalDate date);

    List<ShiftDetailEntity> findAllByUser_Username(String username);
}
