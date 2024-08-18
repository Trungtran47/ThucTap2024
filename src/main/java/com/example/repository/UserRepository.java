package com.example.repository;

import com.example.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findOneByUsernameAndStatus(String username, int status);
    UserEntity findByUsername(String username);

    UserEntity findByUserId(Long id);
    List<UserEntity> findAllByRole(int role);
    UserEntity findByEmailOrEmail(String username, String email);

}
