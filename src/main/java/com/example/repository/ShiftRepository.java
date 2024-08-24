package com.example.repository;

import com.example.entity.ShiftEntity;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ShiftRepository extends JpaRepository<ShiftEntity, Long> {
}
