package com.example.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Repo.CustRepo;
import com.example.demo.model.Cust;
import com.example.demo.model.cust_apply;
import com.example.demo.service.CustService;
@Service
public class CustDao implements CustService {
 @Autowired
 CustRepo cr;
	@Override
	public void getinfo(Cust c1) 
	{
		
		cr.save(c1);
		
 
	}
	
	@Override
	public Object check_login(String email, String pass) {
		Object px=cr.findByEmailAndPass(email,pass);
		
		if(px ==null ||! ((Cust) px).getPass().equals(pass))
		{
		  throw new IllegalArgumentException("Invalid username or Password");
		}
		return px;
	}
	
	@Override
	public void upload(cust_apply c3)

	{
     cr.save(c3);
     
	}
	@Override
	public List<cust_apply> getdata() {
		return null;
	}

	@Override
	public List<Cust> viewmember() {
		return cr.findAll();
	}

	@Override
	public List<Cust> search(String name) {
		return cr.findAllByname(name);
	}

	@Override
	public Cust change_pass(String email) 
	{
		Cust cust = cr.getByEmail(email);
		
		return cust;
	}

	@Override
	public void update_pass(Cust c1) 
	{
		cr.save(c1);
		
	}

	
	
	

}
