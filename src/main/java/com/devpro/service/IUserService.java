package com.devpro.service;

import com.devpro.dto.user.UserViewDto;
import com.devpro.models.User;

import java.util.List;

public interface IUserService {

    UserViewDto save(User user);

    List<UserViewDto> findAll();

    User findById(Integer id);

    void delete(Integer id);
}
