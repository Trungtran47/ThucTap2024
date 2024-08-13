package com.example.entity;

import jakarta.persistence.*;

import java.time.LocalTime;

@Entity
@Table(name = "Shifts")
public class ShiftEntity extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "shift_id")
    private Long shiftId;
    @Column(name = "shift_name",length = 255, nullable = false)
    private String shiftName;
    @Column(name = "start_time")
    private LocalTime startTime;
    @Column(name = "end_time")
    private LocalTime endTime;
    @Column(name = "salary")
    private float Salary;
}
