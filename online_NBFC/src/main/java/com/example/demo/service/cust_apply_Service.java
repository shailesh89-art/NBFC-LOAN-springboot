package com.example.demo.service;

import java.util.List;

import com.example.demo.adminmodel.status;
import com.example.demo.model.cust_apply;

public interface cust_apply_Service 
{
	
List<status>getstatus();

List<cust_apply> apply_search(String name);

void deleteappied(int id);




}
