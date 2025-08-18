package com.devpro.service.impl;

import com.devpro.dto.role.RoleDto;
import com.devpro.models.Role;
import com.devpro.repository.RoleRepository;
import com.devpro.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService implements IRoleService {
    @Autowired
    private RoleRepository roleRepository;

    @Override
    public List<RoleDto> findAll() {
        return List.of();
    }

    @Override
    public Role findById(Integer id) {
        return roleRepository.findById(id).get();
    }
}
