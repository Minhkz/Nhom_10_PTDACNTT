package com.devpro.repository;

import com.devpro.models.Cart;
import com.devpro.models.CartProduct;
import com.devpro.models.CartProductKey;
import com.devpro.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartItemRepository extends JpaRepository<CartProduct, CartProductKey> {
    List<CartProduct> findByCart(Cart cart);
    CartProduct findByCartAndProduct(Cart cart, Product product);
}
