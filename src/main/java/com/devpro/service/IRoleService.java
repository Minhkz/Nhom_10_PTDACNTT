package com.devpro.service;

import com.devpro.dto.role.RoleDto;
import com.devpro.models.Role;

import java.util.List;

public interface IRoleService {
    List<RoleDto> findAll();

    Role findById(Integer id);

    Role findByName(String name);
}
