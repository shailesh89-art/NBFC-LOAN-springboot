package com.example.demo.adminRepo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.adminmodel.Admin;
import com.example.demo.model.cust_apply;
@Repository
public interface AdminRepo extends JpaRepository<Admin,Integer>
{

	







}
 