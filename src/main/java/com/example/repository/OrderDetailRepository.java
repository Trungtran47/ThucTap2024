package com.example.repository;

import com.example.entity.OrderOutDetailEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderOutDetailEntity, Long> {
}
