package com.example.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "shift_detail")
public class ShiftDetailEntity extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

    @ManyToOne
    @JoinColumn(name = "shiftId")
    private ShiftEntity order;

    @ManyToOne
    @JoinColumn(name = "userId")
    private UserEntity user;

}
