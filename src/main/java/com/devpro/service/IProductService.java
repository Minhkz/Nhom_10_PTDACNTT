package com.devpro.service;

import com.devpro.dto.product.ProductDto;
import com.devpro.models.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;

public interface IProductService {
    Product save(Product product);

    Page<Product> findAll(Pageable pageable);

    Page<Product> findAll(Specification<Product> spec, Pageable pageable);

    Product findById(int id);

    void deleteProductById(int id);
}
