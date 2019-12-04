/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hu.elte.bodribakery.controllers;

import hu.elte.bodribakery.entities.User;
import hu.elte.bodribakery.repositories.UserRepository;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import hu.elte.bodribakery.response.UserResponse;
import hu.elte.bodribakery.security.AuthenticatedUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

/**
 *
 * @author KeresztiKrisztián
 */
@CrossOrigin
@RestController
public class UserController {
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AuthenticatedUser authenticatedUser;

    @PostMapping("/users/register")
    public ResponseEntity<User> register(@RequestBody User user) {
        Optional<User> oUser = userRepository.findByUsername(user.getUsername());
        if (oUser.isPresent()) {
            return ResponseEntity.badRequest().build();
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setEnabled(true);
        user.setRole(User.Role.ROLE_USER);
        return ResponseEntity.ok(userRepository.save(user));
    }

    @PostMapping("login")
    public ResponseEntity login() {
        return ResponseEntity.ok(authenticatedUser.getUser());
    }

    @GetMapping("/users")
    public List<UserResponse> getUsers() {
        List<User> users = (List<User>) userRepository.findAll();

        return users.stream().map(user -> new UserResponse(user.getId(), user.getUsername(), user.getNickname())).collect(Collectors.toList());
    }
}
