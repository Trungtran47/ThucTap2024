package com.example.entity;

import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.sql.Date;
import java.time.LocalDate;

@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public class BaseEntity {
    @Column(name = "created_by")
    @CreatedBy
    private String createdBy;
    @Column(name = "create_date")
    @CreatedDate
    private LocalDate createDate;
    @Column(name = "updated_by")
    @LastModifiedBy
    private String updatedBy;
    @Column(name = "updated_date")
    @LastModifiedDate
    private LocalDate  updatedDate;


}
