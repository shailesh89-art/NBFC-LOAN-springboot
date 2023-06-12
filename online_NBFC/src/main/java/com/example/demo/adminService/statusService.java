package com.example.demo.adminService;

import java.util.List;

import com.example.demo.adminmodel.status;
import com.example.demo.model.cust_apply;

public interface statusService 
{
	void getstatus(status s1);
	
	List<status>getallstatus();
	
	status getsinglestatus(int id);
	
	void updatestatus(status st);
	
	List<status> accepted_data(String status);

	List<status> rejected_data(String status);
	
	status getpay(int id);
	
	List<status> getemail(String email);
	
	void deletedata(int id);

}
