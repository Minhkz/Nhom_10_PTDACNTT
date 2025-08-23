package com.devpro.service.impl;

import com.devpro.dto.product.ProductDto;
import com.devpro.models.Product;
import com.devpro.repository.ProductRepository;
import com.devpro.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
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
    public List<ProductDto> findAll() {
        List<Product> products = productRepository.findAll();
        return products.stream().map(product -> convertProduct(product)).collect(Collectors.toList());
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
