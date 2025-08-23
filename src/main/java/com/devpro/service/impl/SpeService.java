package com.devpro.service.impl;

import com.devpro.models.Category;
import com.devpro.models.Specification;
import com.devpro.repository.SpeRepository;
import com.devpro.service.ICategoryService;
import com.devpro.service.ISpeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SpeService implements ISpeService {

    @Autowired
    private SpeRepository speRepository;


    @Override
    public Specification findById(Integer id) {
        return speRepository.findById(id).get();
    }

    @Override
    public Specification save(Specification specification) {
        return  speRepository.save(specification);
    }
}
