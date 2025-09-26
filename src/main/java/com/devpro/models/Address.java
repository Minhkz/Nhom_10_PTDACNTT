package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;

@Entity
@Table(name = "address")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class Address implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    public enum LocationType{
        HOME,
        OFFICE
    }
    @Enumerated(EnumType.STRING)
    @Column(name = "location")
    @NonNull
    private LocationType location;

    @Column(name = "short_desc", length = 100)
    @NonNull
    private String shortDesc;

    @Column(name = "detail_desc", length = 500)
    @NonNull
    private String detailDesc;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User userId;
}
