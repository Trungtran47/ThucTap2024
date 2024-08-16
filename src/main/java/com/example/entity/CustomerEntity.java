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

    @OneToMany(mappedBy = "customer", cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    private Set<OrderOutDetailEntity> ordersOut;

    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Set<VoucherDetailEntity> vouchers;

    public Long getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Long customerId) {
        this.customerId = customerId;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }

    public String getPhoneCustomer() {
        return phoneCustomer;
    }

    public void setPhoneCustomer(String phoneCustomer) {
        this.phoneCustomer = phoneCustomer;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Set<OrderOutDetailEntity> getOrdersOut() {
        return ordersOut;
    }

    public void setOrdersOut(Set<OrderOutDetailEntity> ordersOut) {
        this.ordersOut = ordersOut;
    }

    public Set<VoucherDetailEntity> getVouchers() {
        return vouchers;
    }

    public void setVouchers(Set<VoucherDetailEntity> vouchers) {
        this.vouchers = vouchers;
    }
}
