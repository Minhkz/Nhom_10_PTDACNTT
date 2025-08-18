package com.devpro.dto.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserUpdateDto {
    private Integer id;
    private String username;
    private String email;
    private String phone;
    private String fullName;
    private String address;
    private Integer roleId;
    private String avatar;
}
