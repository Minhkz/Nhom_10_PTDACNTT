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


    @Column(name = "trade_mark", length = 20)
    @NonNull
    private String name;


    @PrePersist
    public void defaults() {
        if(this.name == null) {
            this.name = "Apple";
        }
    }

    @OneToMany(mappedBy = "category")
    private List<Product> products;


}
