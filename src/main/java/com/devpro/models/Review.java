package com.devpro.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Table(name = "reviews")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class Review implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "product_id")
    @NonNull
    private Product product;

    @ManyToOne
    @JoinColumn(name = "user_id")
    @NonNull
    private User user;

    @Column(nullable = false)
    @Min(1)
    @Max(5)
    @NotNull
    private Integer rating;

    @Column(length = 255, nullable = false)
    @NonNull
    private String title;

    @Column
    @NonNull
    private String body;

    @Column(name = "is_approved")
    private Boolean isApproved;

    @Column(name = "created_at")
    private LocalDateTime createdDate;

    @PrePersist
    public void defaults() {
        if (isApproved == null) {
            isApproved = false;
        }
        if (this.createdDate == null) {
            this.createdDate = LocalDateTime.now();
        }
    }
}
