package com.devpro.service.userinfo;

import com.devpro.models.Role;
import com.devpro.models.User;
import com.devpro.service.impl.RoleService;
import com.devpro.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.Map;

@Service
public class CustomOAuth2UserService extends DefaultOAuth2UserService {
    private final UserService userService;

    public CustomOAuth2UserService(UserService userService) {
        this.userService = userService;
    }


    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        OAuth2User oAuth2User = super.loadUser(userRequest);
        Map<String, Object> attributes = oAuth2User.getAttributes();
        String registrationId = userRequest.getClientRegistration().getRegistrationId();

        Role userRole = this.userService.getRoleByName("USER");

        if (registrationId.equalsIgnoreCase("github")) {
            String login = (String) attributes.get("login");
            String fullName = login;
            String email = (String) attributes.get("email");
            if (email == null) {
                email = login + "@github.com";
            }

            User user = this.userService.getUserByEmail(email);
            if (user == null) {
                // tạo mới
                user = new User();
                user.setEmail(email);
                user.setFullName(fullName);
                user.setProvider("GITHUB");
                user.setRole(userRole);
                this.userService.save(user);
            }

            return new DefaultOAuth2User(
                    Collections.singletonList(new SimpleGrantedAuthority("ROLE_" + userRole.getName())),
                    oAuth2User.getAttributes(),
                    "login"
            );
        }
        else { // GOOGLE
            String email = (String) attributes.get("email");
            String fullName = (String) attributes.get("name");

            User user = this.userService.getUserByEmail(email);
            if (user == null) {
                user = new User();
                user.setEmail(email);
                user.setFullName(fullName);
                user.setProvider("GOOGLE");
                user.setRole(userRole);
                this.userService.save(user);
            }

            return new DefaultOAuth2User(
                    Collections.singletonList(new SimpleGrantedAuthority("ROLE_" + userRole.getName())),
                    oAuth2User.getAttributes(),
                    "email"
            );
        }
    }


}
