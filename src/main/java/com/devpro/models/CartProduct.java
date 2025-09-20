package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;

@Entity
@Table(name = "cart_product")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class CartProduct implements Serializable {
    private static final long serialVersionUID = 1L;

    @EmbeddedId
    private CartProductKey cartProductKey;

    @Column
    @NonNull
    private Integer quantity;

    @Column
    private Double price;

    @ManyToOne
    @MapsId("cartId")
    @JoinColumn(name = "cart_id")
    private Cart cart;

    @ManyToOne
    @MapsId("productId")
    @JoinColumn(name = "product_id")
    private Product product;
}
