package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "payment_methods")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class PaymentMethod implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(length = 100, nullable = false, unique = true)
    @NonNull
    private String code;

    @Column(length = 200, nullable = false)
    @NonNull
    private String name;

    @Column(length = 500)
    private String description;

    @Column(name = "is_active")
    private Boolean active;

    @OneToMany(mappedBy = "paymentMethod")
    private List<Payment> payments;

    @PrePersist
    public void defaults() {
        if(this.active==null){
            this.active=true;
        }
    }
}
