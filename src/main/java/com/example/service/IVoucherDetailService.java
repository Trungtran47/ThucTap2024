package com.example.service;

import com.example.entity.VoucherDetailEntity;

import java.util.List;

public interface IVoucherDetailService {
    void saveAll(List<VoucherDetailEntity> voucherDetails);
    VoucherDetailEntity findVoucherDetailExist(Long customerId, Long voucherId);
}
