package com.example.entity;

import jakarta.persistence.*;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Set;

@Entity
@Table(name = "orders")
public class OrderEntity extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private int orderId;
    @Column(name = "order_total")
    private double orderTotal;
    @Column(name = "order_date")
    private LocalDate orderDate;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;
    @ManyToOne
    @JoinColumn(name = "customer_id")
    private CustomerEntity customer;


}
