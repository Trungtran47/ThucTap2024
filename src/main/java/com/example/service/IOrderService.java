package com.example.service;

import com.example.entity.OrderEntity;

import java.util.List;

public interface IOrderService {
    List<OrderEntity> getAllOrders();
    OrderEntity getOrderById(Long id);
    void saveOrder(OrderEntity orderEntity);
    void deleteOrder(Long id);
}
