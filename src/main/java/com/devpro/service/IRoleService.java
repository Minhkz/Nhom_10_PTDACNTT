package com.devpro.service;

import com.devpro.dto.RoleDto;

import java.util.List;

public interface IRoleService {
    List<RoleDto> findAll();
}
