package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "specifications")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class Specification implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "color")
    @NonNull
    private String color;

    @Column(name = "pin")
    @NonNull
    private Integer pin;

    @Column(name = "screen_type", length = 100, nullable = false)
    @NonNull
    private String screenType;

    @Column(name = "screen_size")
    @NonNull
    private Double screenSize;

    @Column(name = "protection", length = 4)
    @NonNull
    private String protection;

    @Column(name = "ram", nullable = false)
    @NonNull
    private Integer ram;

    @PrePersist
    public void defaults() {

        if(this.pin == null) {
            this.pin = 3000;
        }
        if(this.screenSize == null) {
            this.screenSize=6.1;
        }
        if(this.protection == null) {
            this.protection="IP67";
        }
    }
    @OneToMany(mappedBy = "specification")
    private List<Product> products;
}
