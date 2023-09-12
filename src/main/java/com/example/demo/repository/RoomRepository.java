package com.example.demo.repository;

import com.example.demo.repository.Entity.RoomEntity;
import com.example.demo.repository.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface RoomRepository extends JpaRepository<RoomEntity, Long> {
    @Query(value = """
    SELECT room_id from room
    """, nativeQuery = true)
    List<Integer> userSelect();

    @Query(value = """
    SELECT * from user where email = :#{#email}
    """, nativeQuery = true)
    Optional<UserEntity> findByEmail(@Param("email") String email);
}
