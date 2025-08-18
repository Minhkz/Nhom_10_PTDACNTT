package com.devpro.models;

import jakarta.persistence.*;
import lombok.*;


import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "roles")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class Role implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Enumerated(EnumType.STRING)
    @Column(name = "name")
    @NonNull
    private RoleType name;

    @Column
    @NonNull
    private String description;

    public enum RoleType {
        USER, ADMIN
    }

    @PrePersist
    public void defaultValues() {
        if (this.name == null) {
            this.name = RoleType.USER;
        }
    }

    @OneToMany(mappedBy = "role", fetch = FetchType.LAZY)
    private List<User> users;

}
