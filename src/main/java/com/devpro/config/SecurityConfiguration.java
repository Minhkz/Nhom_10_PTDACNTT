package com.devpro.config;

import com.devpro.service.CustomUserDetailsService;
import com.devpro.service.impl.UserService;
import jakarta.servlet.DispatcherType;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;


@Configuration
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfiguration {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public UserDetailsService userDetailsService(UserService userService) {
    return new CustomUserDetailsService(userService);
}

    @Bean
    public DaoAuthenticationProvider authProvider(
            PasswordEncoder passwordEncoder,
            UserDetailsService userDetailsService) {

        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService);
        authProvider.setPasswordEncoder(passwordEncoder);
        authProvider.setHideUserNotFoundExceptions(false);

        return authProvider;
    }

    @Bean
    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(auth -> auth
                        // Cho phép vào mấy trang public
                        .requestMatchers("/resources/**", "/css/**", "/js/**", "/images/**",
                                "/client/homes", "/client/homes/signup", "/client/homes/signup-create",
                                "/client/homes/signin").permitAll()

                        // Admin page phải có ROLE_ADMIN
                        .requestMatchers("/admin/**").hasRole("ADMIN")

                        // Các request còn lại: chỉ cần đăng nhập
                        .anyRequest().authenticated()
                )
                .formLogin(form -> form
                        .loginPage("/client/homes/signin")     // Form đăng nhập chung
                        .loginProcessingUrl("/client/homes/signin") // URL submit login form
                        .defaultSuccessUrl("/client/homes", true)   // Sau khi login thành công, vào đây
                        .failureUrl("/client/homes/signin?error")   // Sai pass → redirect về login kèm error
                        .permitAll()
                )
                .logout(logout -> logout
                        .logoutUrl("/logout")
                        .logoutSuccessUrl("/client/homes")     // Logout xong về trang chủ
                        .permitAll()
                );

        return http.build();
    }

}
