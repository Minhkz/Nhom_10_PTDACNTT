package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "categories")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class Category implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "parent_id")
    private Category parent;

    @OneToMany(mappedBy = "parent")
    private List<Category> children;

    @Column(length = 150, nullable = false)
    @NonNull
    private String name;

    @Column(length = 200, nullable = false, unique = true)
    @NonNull
    private String slug;

    @Column
    private String description;

    @Column(name = "sort_order")
    @NonNull
    private Integer sortOrder;

    @PrePersist
    public void defaults() {
        if(this.parent == null) {
            this.parent = null;
        }
        if (this.sortOrder == null) {
            this.sortOrder = 0;
        }
    }

    @OneToMany(mappedBy = "category")
    private List<Product> products;


}
