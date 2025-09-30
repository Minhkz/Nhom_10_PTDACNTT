package com.devpro.repository;

import com.devpro.models.OrderProduct;
import com.devpro.models.OrderProductKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderProductRepository extends JpaRepository<OrderProduct, OrderProductKey> {

}
