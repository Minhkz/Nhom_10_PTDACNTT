package com.devpro.models;

import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Objects;

@Embeddable
@Getter
@Setter
@NoArgsConstructor
public class WishlistItemKey implements Serializable {
    private Integer wishlistId;
    private Integer productId;

    public WishlistItemKey(Integer wishlistId, Integer productId) {
        this.wishlistId = wishlistId;
        this.productId = productId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof WishlistItemKey)) return false;
        WishlistItemKey that = (WishlistItemKey) o;
        return Objects.equals(wishlistId, that.wishlistId) &&
                Objects.equals(productId, that.productId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(wishlistId, productId);
    }
}
