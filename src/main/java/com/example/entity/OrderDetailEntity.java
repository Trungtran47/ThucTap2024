package com.example.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Orders_detail")
public class OrderDetailEntity extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "orderId")
    private OrderEntity order;

    @ManyToOne
    @JoinColumn(name = "productId")
    private ProductEntity product;
    @Column(name = "quantity")
    private int quantity;

}
