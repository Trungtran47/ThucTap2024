package com.example.repository;

import com.example.entity.VoucherDetailEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface VoucherDetailRepository extends JpaRepository<VoucherDetailEntity, Long> {
    @Query("SELECT v FROM VoucherDetailEntity v  WHERE v.customer.customerId = :customerId AND v.voucher.voucherId = :voucherId")
    VoucherDetailEntity findVoucherDetailExist(@Param("customerId") Long customerId, @Param("voucherId") Long voucherId);
}
