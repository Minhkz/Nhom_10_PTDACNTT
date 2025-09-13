package com.devpro.service.impl;

import com.devpro.dto.user.UserViewDto;
import com.devpro.models.Role;
import com.devpro.models.User;
import com.devpro.repository.RoleRepository;
import com.devpro.repository.UserRepository;
import com.devpro.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;


import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserService implements IUserService {
    @Autowired
    private  UserRepository userRepository;

    @Autowired
    private RoleService roleService;

    //save
    @Override
    public UserViewDto save(User user) {
        User savedUser = userRepository.save(user);
        return convertUserDto(savedUser);
    }

    //view
    @Override
    public Page<User> findAll(Pageable page) {
        return userRepository.findAll(page);
    }

    @Override
    public Page<User> findAll(Specification<User> spec, Pageable pageable) {
        return userRepository.findAll(spec, pageable);
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

    public Boolean checkEmailExists(String email) {
        return userRepository.existsByEmail(email);
    }

    public Boolean checkUsernameExists(String username) {
        return userRepository.existsByUsername(username);
    }

    public User getUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }
    public User getUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    public Role getRoleByName(String roleName) {
        return roleService.findByName(roleName);
    }
}
