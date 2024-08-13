package com.example.entity;

import jakarta.persistence.*;

import java.util.Set;

@Entity
@Table(name = "customers")
public class CustomerEntity extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "customer_id")
    private Long customerId;
    @Column(name = "name_customer",length = 255, nullable = false)
    private String nameCustomer;
    @Column(name = "phone_customer",length = 12, nullable = false)
    private String phoneCustomer;
    @Column(name = "address",length = 255)
    private String address;

    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<OrderEntity> orders;


}
