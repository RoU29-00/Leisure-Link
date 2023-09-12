package com.example.demo.controller.sample;

import com.example.demo.repository.Entity.UserEntity;
import com.example.demo.repository.UserRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("sample/users")
@RestController
public class SampleUserController {

    private final UserRepository userRepository;

    public SampleUserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    /*Getの　"sample/users"*/
    @GetMapping
    public List<UserEntity> getUsers() {
        return this.userRepository.findAll();
    }

    /*Postの　"sample/users"*/
    @PostMapping
    public List<UserEntity> getUser() {
        return this.userRepository.findAll();
    }

    /*Getの　"sample/users/neko"*/
    @GetMapping("neko")
    public List<UserEntity> getUsersNeko() {
        return this.userRepository.findAll();
    }

    /*Postの　"sample/users/inu"*/
    @PostMapping("inu")
    public List<UserEntity> getUsersInu() {
        return this.userRepository.findAll();
    }
}
