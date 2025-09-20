package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "carts")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class Cart implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @OneToOne
    @JoinColumn(name = "user_id")
    @NonNull
    private User user;

    @Column
    private Integer sum;

    @OneToMany(mappedBy = "cart")
    private List<CartProduct> cartProducts;
}
