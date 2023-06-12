package com.example.demo.adminService;

import java.util.List;

import com.example.demo.model.cust_apply;

public interface AdminService 
{
	List<cust_apply> getallcust();
	
	cust_apply getsinglefile(int id);
	
	


}
  