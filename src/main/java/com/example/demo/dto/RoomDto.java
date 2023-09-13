package com.example.demo.dto;

import java.util.Date;

public record RoomDto(Long room_id, String name, Date date, int participants, Long leader, String explanation, String created_at, String updated_at) {
}
//
