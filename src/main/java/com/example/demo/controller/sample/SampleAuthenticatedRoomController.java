package com.example.demo.controller.sample;


import com.example.demo.dto.RoomDto;
import com.example.demo.repository.Entity.RoomEntity;
import com.example.demo.repository.RoomRepository;
import org.springframework.web.bind.annotation.*;

@RequestMapping("sample-authenticated/room")
@RestController
public class SampleAuthenticatedRoomController {



    private final RoomRepository roomRepository;


    public SampleAuthenticatedRoomController(RoomRepository roomRepository) {
        this.roomRepository = roomRepository;

    }



    @PostMapping
    public void addRoom(@RequestBody RoomDto roomDto) {
        var roomEntity = new RoomEntity();
        roomEntity.setName(roomDto.name());
        roomEntity.setDate(roomDto.date());
        roomEntity.setParticipants(roomDto.participants());
        roomEntity.setLeader(roomDto.leader());
        roomEntity.setExplanation(roomDto.explanation());
        roomRepository.save(roomEntity);
    }


}
