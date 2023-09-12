package com.example.demo.repository.Entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "roomAndReply")
public class RoomAndReplyEntity {

    @Id
    @Column(name = "user_id")
    private Long userId;

    @Column(name = "room_id")
    private Long roomId;



    public Long getUserId() {
        return userId;
    }

    public Long getRoomId() {
        return roomId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public void setRoomId(Long roomId) {
        this.roomId = roomId;
    }

  
}
