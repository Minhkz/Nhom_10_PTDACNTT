package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "users")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class User implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "username", unique = true, nullable = false, length = 100 )
    @NonNull
    private String username;

    @Column(name = "email", unique = true, nullable = false, length = 100 )
    @NonNull
    private String email;

    @Column(name = "password", nullable = false)
    @NonNull
    private String password;

    @Column(name = "full_name", nullable = false, length = 100 )
    @NonNull
    private String fullName;

    @Column(name = "address", nullable = false, unique = true, length = 100)
    @NonNull
    private String address;

    @Column(name = "phone", unique = true, nullable = false, length = 15)
    @NonNull
    private String phone;

    @Column(name = "avatar", nullable = true, length = 1000)
    private String avatar;


    @ManyToOne
    @JoinColumn(name = "role_id")
    @NonNull
    private Role role;

    @Column(name = "created_date")
    @NonNull
    private LocalDateTime createdDate;

    @OneToMany(mappedBy = "user")
    private List<Order> orders;

    @OneToOne(mappedBy = "user")
    private Cart cart;

    @OneToOne(mappedBy = "user")
    private Wishlist wishlist;

    @OneToMany(mappedBy = "user")
    private List<Review> reviews;

    @PrePersist
    public void defaultValues() {
        if (this.createdDate == null) {
            this.createdDate = LocalDateTime.now();
        }
    }
}
