package com.devpro.controller.admin;

import com.devpro.dto.UserDto;
import com.devpro.models.Role;
import com.devpro.models.User;
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

    @GetMapping
    public String userPage(Model model) {
        List<UserDto> users = userService.findAll();
        model.addAttribute("users", users);
        return "admin/users/user";
    }
    @GetMapping("/creates")
    public String userCreateForm(Model model) {
        User user = new User();
        user.setRole(new Role());
        model.addAttribute("newUser", user);
        return "admin/users/create";
    }
    //Form Process
    @PostMapping("/create")
    public String createUser(@ModelAttribute("newUser") User newUser, @RequestParam("nhatminhFile") MultipartFile file) {
        String avatar = this.uploadService.handleSaveUploadFile("user", file);
        String hashPassword = this.PasswordEncoder.encode(newUser.getPassword());
        newUser.setAvatar(avatar);
        newUser.setPassword(hashPassword);
        newUser.setRole(this.userService.getRoleByName(newUser.getRole().getName()));
        userService.save(newUser);
        return "redirect:/admin/users";
    }
    @GetMapping("/views/{id}")
    public String viewsPage(@PathVariable("id") int id, Model model) {
        List<UserDto> users = userService.findAll();
        UserDto userDto = users.stream()
                .filter(user -> user.getId() == id)
                .findFirst()
                .orElse(null);

        model.addAttribute("user", userDto);
        return "admin/users/view";
    }

    @GetMapping("/updates/{id}")
    public String updateUser(Model model,  @PathVariable("id") int id) {
        model.addAttribute("updateUser", new User());
        return "admin/users/update";
    }

}
