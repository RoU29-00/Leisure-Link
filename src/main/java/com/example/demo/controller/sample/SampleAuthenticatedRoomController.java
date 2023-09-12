package com.example.demo.controller.sample;

import com.example.demo.CustomUserCredential;
import com.example.demo.dto.UserDto;
import com.example.demo.repository.Entity.UserEntity;
import com.example.demo.repository.UserRepository;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@RequestMapping("sample-authenticated/roomAndReply")
@RestController
public class SampleAuthenticatedRoomController {


    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public SampleAuthenticatedRoomController(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping
    public UserViewModel getLoggedInUser(@AuthenticationPrincipal CustomUserCredential userCredential) {
        UserEntity userEntity = this.userRepository.findById(userCredential.getUserId()).orElseThrow(() -> new RuntimeException("ユーザーが見つかりませんでした"));
        return new UserViewModel(
                userEntity.getUserId(),
                userEntity.getName(),
                userEntity.getEmail(),
                userEntity.getBirthday(),
                userEntity.getSex(),
                userEntity.getLine()
        );
    }

    @PostMapping
    public void addUser(@AuthenticationPrincipal CustomUserCredential userCredential ,@RequestBody UserDto userDto) {
        var userEntity = new UserEntity();
        userEntity.setName(userDto.name());
        userEntity.setLine(userDto.line());
        userEntity.setBirthday(userDto.birthday());
        userEntity.setSex(userDto.sex());
        userEntity.setEmail(userDto.email());
        userEntity.setPassword(this.passwordEncoder.encode(userDto.password()));
        userRepository.save(userEntity);
    }

    @PutMapping
    public void updateUser(@AuthenticationPrincipal CustomUserCredential userCredential, @RequestBody UserDto userDto) {
        var userEntity = new UserEntity();
        userEntity.setUserId(userCredential.getUserId());
        userEntity.setName(userDto.name());
        userEntity.setEmail(userDto.email());
        userEntity.setPassword(this.passwordEncoder.encode(userDto.password()));

        userRepository.save(userEntity);
    }

    @DeleteMapping
    public void deleteUser(@AuthenticationPrincipal CustomUserCredential userCredential) {
        userRepository.deleteById(userCredential.getUserId());
    }

    public record UserViewModel(Long userId, String name, String email, Date birthday, String sex,String line) {
    }
}
