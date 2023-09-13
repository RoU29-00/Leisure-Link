package com.example.demo.repository;

import com.example.demo.repository.Entity.EventEntity;
import com.example.demo.repository.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface EventRepository extends JpaRepository<EventEntity, Long> {
    @Query(value = """
    SELECT event_id from event
    """, nativeQuery = true)
    List<Integer> testSelect();

    @Query(value = """
    SELECT * from event where name = :#{#name}
    """, nativeQuery = true)
    Optional<EventEntity> findByName(@Param("name") String name);

    @Query(value = """
    SELECT * from event where name LIKE %:#{#name}%
    """,nativeQuery = true)
    List<EventEntity> searchEvent(@Param("name") String name);
}
