package com.example.demo;

import com.example.demo.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomEventDetailService implements UserDetailsService {
    private final UserRepository userRepository;

    public CustomEventDetailService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return this.userRepository.findByEmail(username).map(user -> new CustomUserCredential(
                user.getUserId(),
                user.getName(),
                user.getEmail(),
                user.getPassword()
        )).orElseThrow(() -> new RuntimeException("ユーザーが見つかりませんでした"));
    }
}
