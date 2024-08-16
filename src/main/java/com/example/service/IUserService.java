package com.example.service;

import com.example.dto.UserDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IUserService {

    List<UserDTO> findAll(Pageable pageable);
    int getTotalItem();
    List<UserDTO> findAll();

    UserDTO save(UserDTO userDTO);
    UserDTO getAllManager();


}
