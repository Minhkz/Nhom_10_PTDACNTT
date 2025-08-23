package com.devpro.repository;

import com.devpro.models.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SpeRepository extends JpaRepository<Specification, Integer> {
}
