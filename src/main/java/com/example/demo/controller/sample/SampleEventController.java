package com.example.demo.controller.sample;

import com.example.demo.repository.Entity.EventEntity;
import com.example.demo.repository.Entity.UserEntity;
import com.example.demo.repository.EventRepository;
import com.example.demo.repository.UserRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("sample/events")
@RestController
public class SampleEventController {

    private final EventRepository eventRepository;

    public SampleEventController(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }


    @GetMapping
    public List<EventEntity> getEvents() {
        return this.eventRepository.findAll();
    }



}
