package com.example.demo.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Repo.cust_apply_Repo;
import com.example.demo.adminRepo.statusRepo;
import com.example.demo.adminmodel.status;
import com.example.demo.model.cust_apply;
import com.example.demo.service.cust_apply_Service;

@Service
public class cust_apply_dao implements cust_apply_Service 
{

	@Autowired
	cust_apply_Repo car;
	
	@Autowired
	statusRepo sr;

	@Override
	public List<status> getstatus() 
	{
		
		return sr.findAll();
	}

	@Override
	public List<cust_apply> apply_search(String name) {
		return car.findAllByName(name);
	}

	@Override
	public void deleteappied(int id) {
car.deleteById(id);		
	}
	
	
	
	
	

}
