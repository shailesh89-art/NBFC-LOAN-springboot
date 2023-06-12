package com.example.demo.adminDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Repo.CustRepo;
import com.example.demo.Repo.cust_apply_Repo;
import com.example.demo.adminRepo.AdminRepo;
import com.example.demo.adminService.AdminService;
import com.example.demo.model.Cust;
import com.example.demo.model.cust_apply;
@Service
public class AdminDao implements AdminService {

	@Autowired
	CustRepo cr;
	@Autowired
	cust_apply_Repo cap; 
	@Autowired
	AdminRepo ar;
	@Override
	public List<cust_apply> getallcust() {
		return cap.findAll();
		}
	@Override
	public cust_apply getsinglefile(int id) 
	{
		cust_apply ca = cap.getById(id);
		return ca;
	}
	
	
	
	
 

}
