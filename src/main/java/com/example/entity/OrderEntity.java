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
    private Long orderId;
    @Column(name = "order_total")
    private double orderTotal;
    @Column(name = "order_date")
    private LocalDate orderDate;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;


    @OneToMany(mappedBy = "orderOut",cascade = CascadeType.ALL,  fetch = FetchType.LAZY)
    private Set<OrderOutDetailEntity> orderOutDetails;

    @OneToMany(mappedBy = "orderIn",cascade = CascadeType.ALL,  fetch = FetchType.LAZY)
    private Set<OrderInDetailEntity> orderInDetails;
    public Long getOrderId() {
        return orderId;
    }

    public double getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(double orderTotal) {
        this.orderTotal = orderTotal;
    }

    public LocalDate getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDate orderDate) {
        this.orderDate = orderDate;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }



    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public Set<OrderOutDetailEntity> getOrderOutDetails() {
        return orderOutDetails;
    }

    public void setOrderOutDetails(Set<OrderOutDetailEntity> orderOutDetails) {
        this.orderOutDetails = orderOutDetails;
    }

    public Set<OrderInDetailEntity> getOrderInDetails() {
        return orderInDetails;
    }

    public void setOrderInDetails(Set<OrderInDetailEntity> orderInDetails) {
        this.orderInDetails = orderInDetails;
    }
}
