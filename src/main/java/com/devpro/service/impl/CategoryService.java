package com.devpro.service.impl;

import com.devpro.models.Category;
import com.devpro.repository.CategoryRepository;
import com.devpro.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService implements ICategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public Category findById(Integer id) {
        return categoryRepository.findById(id).get();
    }
}
