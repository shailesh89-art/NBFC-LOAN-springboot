package com.example.demo.adminDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.adminRepo.statusRepo;
import com.example.demo.adminService.statusService;
import com.example.demo.adminmodel.status;
import com.example.demo.model.cust_apply;
@Service
public class statusDao implements statusService {

	@Autowired
	statusRepo sr;
	

	@Override
	public void getstatus(status s1) 
	{
		sr.save(s1);
	}
	@Override
	public List<status> getallstatus() 
	{
		
		return sr.findAll();
	}
	@Override
	public status getsinglestatus(int id) 
	{
		status st = sr.getById(id);
		return st;
	}
	@Override
	public void updatestatus(status st) {
      sr.save(st);		
	}
	@Override
	public List<status> accepted_data(String status) 
	{
		return sr.findByStatus(status);
	}
	@Override
	public List<status> rejected_data(String status) 
	{
		return sr.findByStatus(status);
	}
	@Override
	public status getpay(int id) 
	{
		status stpay = sr.getById(id);
		return stpay;
	}
	@Override
	public List<status> getemail(String email) 
	{
    	List<status> l4=sr.findByEmail(email);	
		return l4;
	}
	@Override
	public void deletedata(int id) 
	{
		sr.deleteById(id);
		
	}
	

	
}
