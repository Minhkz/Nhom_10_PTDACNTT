package com.devpro.dto.user;

import com.devpro.service.validator.RegisterChecked;
import com.devpro.service.validator.StrongPassword;
import jakarta.validation.constraints.Size;
import lombok.*;

@Builder
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@RegisterChecked
public class UserDto {
    private String username;

    private String password;

    private String email;

    private String phone;
    private String address;
    private String fullName;
    private String confirmPassword;
}
