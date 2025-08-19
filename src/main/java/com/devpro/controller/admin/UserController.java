package com.devpro.controller.admin;

import com.devpro.dto.user.UserCreateDto;
import com.devpro.dto.user.UserUpdateDto;
import com.devpro.dto.user.UserViewDto;
import com.devpro.models.Role;
import com.devpro.models.User;
import com.devpro.service.impl.RoleService;
import com.devpro.service.impl.UploadService;
import com.devpro.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Controller
@RequestMapping("/admin/users")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private UploadService uploadService;

    @Autowired
    private PasswordEncoder PasswordEncoder;

    @Autowired
    private RoleService roleService;

    @GetMapping
    public String userPage(Model model) {
        List<UserViewDto> users = userService.findAll();
        model.addAttribute("users", users);
        return "admin/users/user";
    }

    @GetMapping("/creates")
    public String userCreateForm(Model model) {
        UserCreateDto user= new UserCreateDto();
        model.addAttribute("newUser", user);
        return "admin/users/create";
    }

    @PostMapping("/create")
    public String createUser(@ModelAttribute("newUser") UserCreateDto newUser, @RequestParam("nhatminhFile") MultipartFile file) {
        String avatar = this.uploadService.handleSaveUploadFile("user", file);
        String hashPassword = this.PasswordEncoder.encode(newUser.getPassword());
        User user= new User();
        user.setUsername(newUser.getUsername());
        user.setPassword(hashPassword);
        user.setAvatar(avatar);
        user.setEmail(newUser.getEmail());
        user.setAddress(newUser.getAddress());
        user.setPhone(newUser.getPhone());
        user.setFullName(newUser.getFullName());

        Role role = this.roleService.findById(newUser.getRoleId());
        user.setRole(role);

        userService.save(user);
        return "redirect:/admin/users";
    }
    @GetMapping("/views/{id}")
    public String viewsPage(@PathVariable("id") int id, Model model) {
        List<UserViewDto> users = userService.findAll();
        UserViewDto userViewDto = users.stream()
                .filter(user -> user.getId() == id)
                .findFirst()
                .orElse(null);

        model.addAttribute("user", userViewDto);
        return "admin/users/view";
    }

    @GetMapping("/updates/{id}")
    public String updateUser(Model model,  @PathVariable("id") int id) {
        User user = userService.findById(id);
        UserUpdateDto  userUpdateDto = new UserUpdateDto();
        userUpdateDto.setId(user.getId());
        userUpdateDto.setUsername(user.getUsername());
        userUpdateDto.setEmail(user.getEmail());
        userUpdateDto.setPhone(user.getPhone());
        userUpdateDto.setFullName(user.getFullName());
        userUpdateDto.setAddress(user.getAddress());
        userUpdateDto.setRoleId(user.getRole().getId());
        userUpdateDto.setAvatar(user.getAvatar());
        model.addAttribute("updateUser", userUpdateDto);
        return "admin/users/update";
    }

    @PostMapping("/update")
    public String updateUserForm(@ModelAttribute("updateUser") UserUpdateDto updateUser, @RequestParam("nhatminhFile") MultipartFile file) {
        User user = userService.findById(updateUser.getId());
        if (user != null) {

            user.setPhone(updateUser.getPhone());
            user.setFullName(updateUser.getFullName());
            user.setAddress(updateUser.getAddress());
            String avatar = this.uploadService.handleSaveUploadFile("user", file);
            user.setAvatar(avatar);

            this.userService.save(user);
        }
        return "redirect:/admin/users";
    }

    @GetMapping("/deletes/{id}")
    public String deleteUser(@PathVariable("id") int id) {
        this.userService.delete(id);
        return "redirect:/admin/users";
    }
}
