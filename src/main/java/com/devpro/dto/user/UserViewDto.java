package com.devpro.dto.user;

import com.devpro.models.Role;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserViewDto {
    private Integer id;
    private String username;
    private String email;
    private String fullName;
    private String address;
    private String phone;
    private String avatar;
    private Role.RoleType role;
    private LocalDate createdDate;


    public String getCreatedDateFormatted() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        return createdDate != null ? createdDate.format(formatter) : "";
    }
}
