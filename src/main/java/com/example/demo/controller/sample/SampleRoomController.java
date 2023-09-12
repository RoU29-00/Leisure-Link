package com.example.demo.controller.sample;

import com.example.demo.repository.Entity.RoomEntity;
import com.example.demo.repository.RoomRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("sample/rooms")
@RestController
public class SampleRoomController {

    private final RoomRepository roomRepository;

    public SampleRoomController(RoomRepository roomRepository) {
        this.roomRepository = roomRepository;
    }

    /*Getの　"sample/rooms"*/
    @GetMapping
    public List<RoomEntity> getRooms() {
        return this.roomRepository.findAll();
    }

    /*Postの　"sample/rooms"*/
    @PostMapping
    public List<RoomEntity> getRoom() {
        return this.roomRepository.findAll();
    }

    /*Getの　"sample/rooms/neko"*/
    @GetMapping("neko")
    public List<RoomEntity> getRoomsNeko() {
        return this.roomRepository.findAll();
    }

    /*Postの　"sample/rooms/inu"*////
    @PostMapping("inu")
    public List<RoomEntity> getRoomsInu() {
        return this.roomRepository.findAll();
    }
}
