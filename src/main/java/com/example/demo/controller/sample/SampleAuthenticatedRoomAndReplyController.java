package com.example.demo.controller.sample;


import com.example.demo.dto.RoomAndReplyDto;
import com.example.demo.dto.RoomDto;
import com.example.demo.repository.Entity.RoomAndReplyEntity;
import com.example.demo.repository.Entity.RoomEntity;
import com.example.demo.repository.RoomAndReplyRepository;
import com.example.demo.repository.RoomRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("sample-authenticated/roomAndReply")
@RestController
public class SampleAuthenticatedRoomAndReplyController {



    private final RoomAndReplyRepository roomAndReplyRepository;


    public SampleAuthenticatedRoomAndReplyController(RoomAndReplyRepository roomAndReplyRepository) {
        this.roomAndReplyRepository = roomAndReplyRepository;

    }



    @PostMapping
    public void addRoomAndReply(@RequestBody RoomAndReplyDto roomAndReplyDto) {
        var roomAndReplyEntity = new RoomAndReplyEntity();
        roomAndReplyEntity.setRoomId(roomAndReplyDto.room_id());
        roomAndReplyEntity.setUserId(roomAndReplyDto.user_id());
        roomAndReplyRepository.save(roomAndReplyEntity);
    }


}
