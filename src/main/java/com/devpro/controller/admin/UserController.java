package com.devpro.controller.admin;

import com.devpro.dto.user.UserCreateDto;
import com.devpro.dto.user.UserUpdateDto;
import com.devpro.dto.user.UserViewDto;
import com.devpro.models.Role;
import com.devpro.models.User;
import com.devpro.service.impl.RoleService;
import com.devpro.service.impl.UploadService;
import com.devpro.service.impl.UserService;
import com.devpro.service.specification.UserSpec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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
    public String userPage(Model model, @RequestParam(value = "page", defaultValue = "1") int page,
                                                      @RequestParam(value = "name", required = false) String name)
    {

        Pageable pageable = PageRequest.of(page-1, 5, Sort.by("id").descending());
        Page<User> userPages;
        if (name != null && !name.isEmpty()) {
            userPages= userService.findAll(UserSpec.searchUserByName(name),pageable);
            model.addAttribute("nameSearch", name);
        }else {
            userPages= userService.findAll(pageable);
        }
        List<User> userList = userPages.getContent();
        List<UserViewDto> users = userList.stream().map(user -> userService.convertUserDto(user)).collect(Collectors.toList());

        model.addAttribute("users", users);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", userPages.getTotalPages());
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
        User user = userService.findById(id);
        UserViewDto userViewDto = new UserViewDto();
        userViewDto.setId(user.getId());
        userViewDto.setUsername(user.getUsername());
        userViewDto.setAvatar(user.getAvatar());
        userViewDto.setEmail(user.getEmail());
        userViewDto.setAddress(user.getAddress());
        userViewDto.setPhone(user.getPhone());
        userViewDto.setFullName(user.getFullName());
        userViewDto.setRole(user.getRole().getName());
        userViewDto.setCreatedDate(user.getCreatedDate().toLocalDate());
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
