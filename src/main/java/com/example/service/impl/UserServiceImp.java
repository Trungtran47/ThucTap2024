package com.example.service.impl;

import com.example.converter.UserConverter;
import com.example.dto.UserDTO;
import com.example.entity.UserEntity;
import com.example.repository.UserRepository;
import com.example.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImp implements IUserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserConverter userConverter;
    @Override
    public List<UserDTO> findAll(Pageable pageable) {
        List<UserDTO> models = new ArrayList<>();
        List<UserEntity> entities = userRepository.findAll(pageable).getContent();
        for (UserEntity item: entities) {
            UserDTO userDTO = userConverter.toDTO(item);
            models.add(userDTO);
        }
        return models;
    }

    @Override
    public int getTotalItem() {
        return (int) userRepository.count();
    }

    @Override
    public List<UserDTO> findAll() {
        List<UserDTO> results = new ArrayList<>();
        List<UserEntity> entities = userRepository.findAll();
        for (UserEntity item: entities) {
            UserDTO userDTO = userConverter.toDTO(item);
            results.add(userDTO);
        }
        return results;
    }

    @Override
    public UserDTO save(UserDTO userDTO) {
        UserEntity userEntity = new UserEntity();
        if(userDTO.getId() != null){
            Optional<UserEntity> optionalGenre = userRepository.findById(userDTO.getId());
            if (optionalGenre.isPresent()) {
//                get data before update
                UserEntity oldDataEntity = optionalGenre.get();
                userEntity = userConverter.toEntity(oldDataEntity, userDTO);
            }else {
            }
        }else {
            userEntity = userConverter.toEntity(userDTO);
        }

//        save in database
        userEntity = userRepository.save(userEntity);

        return userConverter.toDTO(userEntity);
    }

    @Override
    public UserDTO getAllManager() {
        return null;
    }
}
