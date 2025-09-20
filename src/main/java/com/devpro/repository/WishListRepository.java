package com.devpro.repository;

import com.devpro.models.User;
import com.devpro.models.Wishlist;
import com.devpro.models.WishlistItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WishListRepository extends JpaRepository<Wishlist, Integer> {
    Wishlist findByUser(User user);

    Wishlist save(Wishlist wishlist);
}
