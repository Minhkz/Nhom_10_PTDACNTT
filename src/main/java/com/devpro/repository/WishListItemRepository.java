package com.devpro.repository;


import com.devpro.models.Wishlist;
import com.devpro.models.WishlistItem;
import com.devpro.models.WishlistItemKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface WishListItemRepository extends JpaRepository<WishlistItem, WishlistItemKey> {
    List<WishlistItem> findByWishlist(Wishlist wishlist);
    WishlistItem findBywishlistItemKey(WishlistItemKey wishlistItemKey);

}
