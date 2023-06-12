package com.example.demo.adminDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.adminRepo.request_Repo;
import com.example.demo.adminService.request_Service;
import com.example.demo.adminmodel.call_request;
@Service
public class request_Dao implements request_Service {

	@Autowired
	request_Repo req_r;

	@Override
	public void request(call_request req)
	{
		req_r.save(req);
		
	}

	@Override
	public List<call_request> call_request()
	{
		
		return req_r.findAll();
	} 
	

}
