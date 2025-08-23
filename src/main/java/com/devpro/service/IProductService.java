package com.devpro.service;

import com.devpro.dto.product.ProductDto;
import com.devpro.models.Product;

import java.util.List;

public interface IProductService {
    Product save(Product product);

    List<ProductDto> findAll();

    Product findById(int id);

    void deleteProductById(int id);
}
