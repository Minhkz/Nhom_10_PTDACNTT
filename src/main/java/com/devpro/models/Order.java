package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "orders")
@Getter
@Setter
@NoArgsConstructor
public class Order implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "total_price")
    private Double totalPrice;

    @Column(name = "total_product")
    @NonNull
    private Integer quantity;

    @Column
    private String status;

    @Column(name = "payment_ref", length = 50)
    @NonNull
    private String paymentRef;

    @Column(name = "payment_status", length = 50)
    @NonNull
    private String paymentStatus;

    @Column(name = "payment_method", length = 50)
    @NonNull
    private String paymentMethod;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;

    @OneToMany(mappedBy = "order")
    private List<OrderProduct> orderProducts;

    @OneToMany(mappedBy = "order")
    private List<Payment> payments;
}
