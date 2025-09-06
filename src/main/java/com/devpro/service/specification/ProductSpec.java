package com.devpro.service.specification;

import com.devpro.models.Category;
import com.devpro.models.Category_;
import com.devpro.models.Product;
import com.devpro.models.Product_;

import jakarta.persistence.criteria.Join;
import jakarta.persistence.criteria.JoinType;
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

    public static Specification<Product> getFeatureProduct(int isFeature) {
        return  (root, query, criteriaBuilder) -> {
            return criteriaBuilder.equal(root.get(Product_.FEATURED),  isFeature);
        };
    }

    public static Specification<Product> getDiscountProduct(int isDiscount) {
        return  (root, query, criteriaBuilder) -> {
            return criteriaBuilder.equal(root.get(Product_.DISCOUNT),  isDiscount);
        };
    }
    public static Specification<Product> getCategoryProduct(String category) {
        return ((root, query, criteriaBuilder) ->  {
            Join<Product, Category> categoryJoin = root.join(Product_.CATEGORY, JoinType.INNER);
            return criteriaBuilder.equal(criteriaBuilder.lower(categoryJoin.get(Category_.NAME)),  category.toLowerCase());
        });
    }
}
