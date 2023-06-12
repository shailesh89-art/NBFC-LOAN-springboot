package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.cust_apply;
@Repository
public interface cust_apply_Repo extends JpaRepository<cust_apply,Integer>
{

	List<cust_apply> findAllByName(String name);
	
	

	


	

	

	

}
