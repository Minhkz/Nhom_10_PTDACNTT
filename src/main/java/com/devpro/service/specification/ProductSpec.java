package com.devpro.service.specification;

import com.devpro.models.Product;
import com.devpro.models.Product_;
import com.devpro.models.User_;
import org.springframework.data.jpa.domain.Specification;

public class ProductSpec {
    public static Specification<Product> searchByName(String name) {
        return (root, query, criteriaBuilder) -> {
            if (name == null || name.isEmpty()) {
                return criteriaBuilder.conjunction();
            }
            return criteriaBuilder.like(
                    criteriaBuilder.lower(root.get(Product_.name)),
                    "%" + name.toLowerCase() + "%"
            );
        };
    }
}
