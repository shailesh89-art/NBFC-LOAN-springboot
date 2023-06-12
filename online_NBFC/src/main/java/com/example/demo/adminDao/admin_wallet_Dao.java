package com.example.demo.adminDao;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.adminRepo.admin_wallet_Repo;
import com.example.demo.adminService.admin_wallet_service;
import com.example.demo.adminmodel.admin_wallet;
@Service
public class admin_wallet_Dao implements admin_wallet_service {

	@Autowired
	admin_wallet_Repo awr;
	@Override
	public void save_amt(admin_wallet ad_amt)
	{
		
		awr.save(ad_amt);
		
	}
	@Override
	public List<admin_wallet> Show_amt() 
	{
		return awr.findAll();
	}
	@Override
	public admin_wallet update_wallet(int id) 
	{
		admin_wallet aw = awr.getById(id);
		return aw; 
	}
	@Override
	public void updatew(admin_wallet awallet) 
	{
		awr.save(awallet); 
	}
	@Override
	public admin_wallet updata(String amount) 
	{
		admin_wallet as =awr.findByAmount(amount);
		return as;
	}
	
	

}
