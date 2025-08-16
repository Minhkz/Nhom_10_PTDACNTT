package com.devpro.service.impl;

import com.devpro.dto.RoleDto;
import com.devpro.dto.UserDto;
import com.devpro.models.Role;
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

    @Override
    public UserDto save(User user) {
        User savedUser = userRepository.save(user);
        return convertData(savedUser);
    }

    @Override
    public List<UserDto> findAll() {
        List<User> users = userRepository.findAll();
        return users.stream().map(user -> convertData(user)).collect(Collectors.toList());
    }
    public Role getRoleByName(Role.RoleType name){
        Role role = roleRepository.findByName(name);
        return role;
    }
    public UserDto convertData(User savedUser){
        return UserDto.builder()
                .id(savedUser.getId())
                .username(savedUser.getUsername())
                .email(savedUser.getEmail())
                .fullName(savedUser.getFullName())
                .address(savedUser.getAddress())
                .phone(savedUser.getPhone())
                .avatar(savedUser.getAvatar())
                .role(savedUser.getRole().toString())
                .createdDate(savedUser.getCreatedDate())
                .build();
    }
    public RoleDto convertDataRole(Role role){
        return RoleDto.builder()
                .id(role.getId())
                .name(role.getName())
                .build();
    }
}
