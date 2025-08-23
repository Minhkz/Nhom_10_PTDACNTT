package com.devpro.service;

import com.devpro.models.Specification;

public interface ISpeService {
    Specification findById(Integer id);

    Specification save(Specification specification);
}
