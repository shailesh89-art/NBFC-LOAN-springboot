package com.example.demo.adminRepo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.adminmodel.status;
@Repository
public interface statusRepo extends JpaRepository<status,Integer> {

	List<status> findByStatus(String status);

	List<status> findByEmail(String email);

	status getById(status id); 

}
