package com.example.demo.repository.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

import java.util.Date;

@Entity
@Table(name = "room")
public class RoomEntity {

    @Id
    @Column(name = "room_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long roomId;

    @Column(name = "name")
    private String name;

    @Column(name = "date")
    private String date;

    @Column(name = "participants")
    private int participants;

    @Column(name = "leader")
    private Long leader;

    @Column(name = "explanation")
    private String explanation;

    public Long getRoomId() {
        return roomId;
    }

    public String getName() {
        return name;
    }

    public int getParticipants() {
        return participants;
    }

    public Long getLeader() {
        return leader;
    }

    public String getExplanation() {
        return explanation;
    }

    public void setRoomId(Long roomId) {
        this.roomId = roomId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setParticipants(int participants) {
        this.participants = participants;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setLeader(Long leader) {
        this.leader = leader;
    }

    public void setExplanation(String explanation) {
        this.explanation = explanation;
    }
}
