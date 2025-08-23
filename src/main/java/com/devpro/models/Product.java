package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "products")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class Product implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 100, nullable = false)
    @NonNull
    private String name;

    @Column(nullable = false)
    @NonNull
    private Double price;

    @Column(name = "detail_desc",nullable = false, columnDefinition = "MEDIUMTEXT ")
    @NonNull
    private String detailDesc;

    @Column(name = "short_desc",nullable = false, length = 600)
    @NonNull
    private String shortDesc;

    @Column(nullable = false)
    @NonNull
    private Integer quantity;

    @Column(name = "sold")
    private Integer sold;

    @Column(name = "image", length = 1000)
    private String avatar;


    @ManyToOne
    @JoinColumn(name = "category_id")
    @NonNull
    private Category category;

    @ManyToOne
    @JoinColumn(name = "spec_id")
    @NonNull
    private Specification specification;

    @OneToMany(mappedBy = "product")
    private List<OrderProduct> orderProducts;

    @OneToMany(mappedBy = "product")
    private List<CartProduct> cartProducts;

    @OneToMany(mappedBy = "product")
    private List<WishlistItem> wishlistItems;

    @OneToMany(mappedBy = "product")
    private List<Review> reviews;

    @PrePersist
    public void defaults() {
        if(this.sold == null) {
            this.sold = 1;
        }
    }
}
