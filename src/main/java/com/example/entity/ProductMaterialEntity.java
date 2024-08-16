package com.example.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "product_item")
public class ProductItemEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long Id;
    @ManyToOne
    @JoinColumn(name = "material_id")
    private MaterialEntity material;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private ProductEntity product;
}
