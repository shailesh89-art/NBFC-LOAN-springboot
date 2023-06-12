package com.example.demo.adminService;

import java.util.List;

import com.example.demo.adminmodel.call_request;

public interface request_Service 
{
	void request(call_request req);
	
	List<call_request>call_request();

}
