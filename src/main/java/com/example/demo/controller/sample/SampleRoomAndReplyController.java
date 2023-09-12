package com.example.demo.controller.sample;

import com.example.demo.repository.Entity.RoomAndReplyEntity;
import com.example.demo.repository.RoomAndReplyRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("sample/roomAndReplys")
@RestController
public class SampleRoomAndReplyController {

    private final RoomAndReplyRepository roomRepository;

    public SampleRoomAndReplyController(RoomAndReplyRepository roomRepository) {
        this.roomRepository = roomRepository;
    }

    /*Getの　"sample/rooms"*/
    @GetMapping
    public List<RoomAndReplyEntity> getRoomAndReplys() {
        return this.roomRepository.findAll();
    }

    /*Postの　"sample/rooms"*/
    @PostMapping
    public List<RoomAndReplyEntity> getRoomAndReply() {
        return this.roomRepository.findAll();
    }

    /*Getの　"sample/rooms/neko"*/
    @GetMapping("neko")
    public List<RoomAndReplyEntity> getRoomAndReplysNeko() {
        return this.roomRepository.findAll();
    }

    /*Postの　"sample/rooms/inu"*////
    @PostMapping("inu")
    public List<RoomAndReplyEntity> getRoomAndReplysInu() {
        return this.roomRepository.findAll();
    }
}
