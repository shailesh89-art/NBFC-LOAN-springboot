package com.example.demo.adminRepo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.adminmodel.call_request;
@Repository
public interface request_Repo extends JpaRepository<call_request,Integer>{

}
