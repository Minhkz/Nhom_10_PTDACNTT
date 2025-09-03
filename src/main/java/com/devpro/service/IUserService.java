package com.devpro.service;

import com.devpro.dto.user.UserViewDto;
import com.devpro.models.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;


import java.util.List;

public interface IUserService {

    UserViewDto save(User user);

    Page<User> findAll(Pageable pageable);

    Page<User> findAll(Specification<User> spec, Pageable pageable);

    User findById(Integer id);

    void delete(Integer id);
}
