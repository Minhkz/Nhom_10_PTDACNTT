package com.devpro.service;

import com.devpro.dto.UserDto;
import com.devpro.models.User;

import java.util.List;

public interface IUserService {

    UserDto save(User user);

    List<UserDto> findAll();
}
