package com.devpro.service.specification;

import com.devpro.models.*;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.Join;
import jakarta.persistence.criteria.JoinType;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;
import java.util.Map;

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
    public static Specification<Product> getListCategoryProduct(List<String> categories) {
        return (root, query, criteriaBuilder) -> {
            Join<Product, Category> categoryJoin = root.join(Product_.CATEGORY, JoinType.INNER);


            CriteriaBuilder.In<String> inClause = criteriaBuilder.in(categoryJoin.get(Category_.NAME));

            for (String category : categories) {
                inClause.value(category);
            }

            return inClause;
        };
    }

    public static Specification<Product> getProductByListScreenSize(List<Double> screenSizes) {
        return (root, query, cb) -> {
            Join<Product, com.devpro.models.Specification> specificationJoin =
                    root.join(Product_.SPECIFICATION, JoinType.INNER);

            CriteriaBuilder.In<Double> inClause = cb.in(specificationJoin.get(Specification_.SCREEN_SIZE));
            for (Double size : screenSizes) {
                inClause.value(size);
            }
            return inClause;
        };
    }

    public static Specification<Product> getProductByListColor(List<String> colors) {
        return (root, query, criteriaBuilder) -> {
            Join<Product, com.devpro.models.Specification> specificationJoin =
                    root.join(Product_.SPECIFICATION, JoinType.INNER);

            CriteriaBuilder.In<String> inClause = criteriaBuilder.in(specificationJoin.get(Specification_.COLOR));
            for (String color : colors) {
                inClause.value(color);
            }
            return inClause;

        };
    }
    public static Specification<Product> getProductByListRom(List<Integer> roms) {
        return ((root, query, criteriaBuilder) -> {
            Join<Product, com.devpro.models.Specification> specificationJoin = root.join(Product_.SPECIFICATION, JoinType.INNER);
            CriteriaBuilder.In<Integer> inClause= criteriaBuilder.in(specificationJoin.get(Specification_.ram));
            for (Integer rom : roms) {
                inClause.value(rom);
            }
            return inClause;
        });
    }

    public static Specification<Product> getProductByPrice(double minPrice, double maxPrice) {
        return ((root, query, criteriaBuilder) -> {
            return criteriaBuilder.between(root.get(Product_.price), minPrice, maxPrice);
        });
    }

}
