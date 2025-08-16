package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;

@Entity
@Table(name = "product_images")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class ProductImage implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "product_id")
    @NonNull
    private Product product;

    @Column(length = 1000, nullable = false)
    @NonNull
    private String url;

    @Column(length = 255, name = "alt_text")
    private String altText;

    @Column(name = "sort_order")
    private Integer sortOrder;

    @Column(name = "is_primary")
    private Boolean isPrimary;

    @PrePersist
    public void defaults() {
        if(this.sortOrder == null) {
            this.sortOrder = 0;
        }
        if(this.isPrimary == null) {
            this.isPrimary = false;
        }
    }
}
