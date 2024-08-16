package com.example.service.impl;

import com.example.entity.OrderOutDetailEntity;
import com.example.repository.OrderDetailRepository;
import com.example.service.IOrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class OrderDetailServiceImp implements IOrderDetailService {
    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Override
    public List<OrderOutDetailEntity> getAllOrderDetail() {
        return orderDetailRepository.findAll();
    }

    @Override
    public OrderOutDetailEntity getOrderDetailById(Long id) {
        return orderDetailRepository.findById(id).orElse(null);
    }

    @Override
    public void saveOrderDetail(OrderOutDetailEntity orderDetailEntity) {
        orderDetailRepository.save(orderDetailEntity);

    }

    @Override
    public void deleteOrderDetail(Long id) {
        orderDetailRepository.deleteById(id);
    }

}
