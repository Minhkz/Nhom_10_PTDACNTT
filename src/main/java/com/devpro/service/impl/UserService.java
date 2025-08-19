package com.devpro.service.impl;

import com.devpro.dto.user.UserViewDto;
import com.devpro.models.User;
import com.devpro.repository.RoleRepository;
import com.devpro.repository.UserRepository;
import com.devpro.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService implements IUserService {
    @Autowired
    private  UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    //save
    @Override
    public UserViewDto save(User user) {
        User savedUser = userRepository.save(user);
        return convertUserDto(savedUser);
    }

    //view
    @Override
    public List<UserViewDto> findAll() {
        List<User> users = userRepository.findAll();
        return users.stream().map(user -> convertUserDto(user)).collect(Collectors.toList());
    }


    @Override
    public User findById(Integer id) {
        return userRepository.findById(id).get();
    }


    public UserViewDto convertUserDto(User savedUser){
        return UserViewDto.builder()
                .id(savedUser.getId())
                .username(savedUser.getUsername())
                .email(savedUser.getEmail())
                .fullName(savedUser.getFullName())
                .address(savedUser.getAddress())
                .phone(savedUser.getPhone())
                .avatar(savedUser.getAvatar())
                .role(savedUser.getRole().getName())
                .createdDate(savedUser.getCreatedDate().toLocalDate())
                .build();
    }

    @Override
    public void delete(Integer id) {
        userRepository.deleteById(id);
    }
}
