package com.devpro.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Size;
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

    @Column(name = "username", unique = true, length = 100 )
    private String username;

    @Column(name = "email", unique = true, nullable = false, length = 100 )
    @NonNull
    @Email(message = "Email is not valid", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "full_name", nullable = false, length = 100 )
    @NonNull
    private String fullName;

    @Column(name = "address", unique = true, length = 100)
    private String address;

    @Column(name = "phone", unique = true, length = 15)
    @Size(min = 10)
    private String phone;

    @Column(name = "avatar", nullable = true, length = 1000)
    private String avatar;

    @Column(name = "provider", length = 100)
    private String provider;


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

    @OneToMany(mappedBy = "user")
    private List<Address> addresses;

    @PrePersist
    public void defaultValues() {
        if (this.createdDate == null) {
            this.createdDate = LocalDateTime.now();
        }
        if (this.provider == null) {
            this.provider = "LOCAL";
        }
    }
}
