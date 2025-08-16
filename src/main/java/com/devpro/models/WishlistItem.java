package com.devpro.models;

import jakarta.persistence.*;
import org.hibernate.cache.spi.support.AbstractReadWriteAccess;

import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Table(name = "wishlist_items")
public class WishlistItem implements Serializable {
    private static final long serialVersionUID = 1L;

    @EmbeddedId
    private WishlistItemKey wishlistItemKey;

    @ManyToOne
    @MapsId("wishlistId")
    @JoinColumn(name = "wishlist_id")
    private Wishlist wishlist;

    @ManyToOne
    @MapsId("productId")
    @JoinColumn(name = "product_id")
    private Product product;

    @Column(name = "added_at")
    private LocalDateTime addedDate;

    @PrePersist
    public void defaults() {
        if (addedDate == null) {
            addedDate = LocalDateTime.now();
        }
    }


}
