package com.devpro.dto.user;

import com.devpro.models.Role;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserCreateDto {
    private String username;
    private String email;
    private String password;
    private String fullName;
    private String address;
    private String phone;
    private String avatar;
    private Integer roleId;

}
