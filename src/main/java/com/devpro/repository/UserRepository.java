package com.devpro.repository;

import com.devpro.models.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;



@Repository
public interface  UserRepository extends JpaRepository<User,Integer>, JpaSpecificationExecutor<User> {
    Page<User> findAll(Pageable pageable);
    Page<User> findAll(Specification<User> spec, Pageable pageable);
}
