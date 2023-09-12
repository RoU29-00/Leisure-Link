package com.example.demo.dto;

import java.util.Date;

public record RoomDto(String room_id, String name, Date date, int participants, int leader, String explanation, String created_at, String updated_at) {
}
//
