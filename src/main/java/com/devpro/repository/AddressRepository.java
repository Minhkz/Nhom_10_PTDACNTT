package com.devpro.repository;

import com.devpro.models.Address;
import com.devpro.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AddressRepository extends JpaRepository<Address,Integer> {
    List<Address> findByUser(User user);
    Address findById(int id);
}
