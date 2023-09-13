package com.example.demo.controller.sample;

import com.example.demo.repository.Entity.EventEntity;
import com.example.demo.repository.Entity.UserEntity;
import com.example.demo.repository.EventRepository;
import com.example.demo.repository.UserRepository;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("search")
    public List<EventEntity> getEventsByName(@RequestParam String name) {
        return this.eventRepository.searchEvent(name);
    }



}
