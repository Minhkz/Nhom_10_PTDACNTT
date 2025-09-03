package com.devpro.service.specification;

import com.devpro.models.User;
import com.devpro.models.User_;
import org.springframework.data.jpa.domain.Specification;

public class UserSpec {

    public static Specification<User> searchUserByName(String name) {
        return (root, query, criteriaBuilder) -> {
            if (name == null || name.isEmpty()) {
                return criteriaBuilder.conjunction();
            }
            return criteriaBuilder.like(
                    criteriaBuilder.lower(root.get(User_.fullName)),
                    "%" + name.toLowerCase() + "%"
            );
        };
    }
}
