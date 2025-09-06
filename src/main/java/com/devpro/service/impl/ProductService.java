package com.devpro.service.impl;

import com.devpro.dto.product.ProductDto;
import com.devpro.models.Product;
import com.devpro.repository.ProductRepository;
import com.devpro.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService implements IProductService {
    @Autowired
    private ProductRepository productRepository;


    @Override
    public Product save(Product product) {
        return productRepository.save(product);
    }

    @Override
    public Page<Product> findAll(Pageable pageable) {
        return productRepository.findAll(pageable);
    }

    @Override
    public Page<Product> findAll(Specification<Product> spec, Pageable pageable) {
        return productRepository.findAll(spec, pageable);
    }

    @Override
    public List<Product> findAll(Specification<Product> spec) {
        return productRepository.findAll(spec);
    }


    @Override
    public Product findById(int id) {
        return productRepository.findById(id).get();
    }

    @Override
    public void deleteProductById(int id) {
        productRepository.deleteById(id);
    }

    public ProductDto convertProduct(Product product) {
        return ProductDto.builder()
                .id(product.getId())
                .name(product.getName())
                .price(product.getPrice())
                .quantity(product.getQuantity())
                .sold(product.getSold())
                .shortDesc(product.getShortDesc())
                .build();
    }
}
