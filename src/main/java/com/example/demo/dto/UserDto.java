package com.example.demo.dto;

import java.util.Date;

public record UserDto(String name, String email, String password, String sex, Date birthday) {
}
