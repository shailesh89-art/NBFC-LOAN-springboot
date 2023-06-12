package com.example.demo.adminDao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.adminRepo.loanRepo;
import com.example.demo.adminRepo.statusRepo;
import com.example.demo.adminService.loan_Service;
import com.example.demo.adminmodel.loan;
@Service
public class laonDao implements loan_Service {

	@Autowired 
	loanRepo lr;
	
	@Autowired
	statusRepo sr;
	
	/*
	 public static final int MONTHS_IN_YEAR = 12;
	@Override
	public <Emi> List<Emi> generateEmiTable(loan loan) 
	{
		return null;
	}*/
	@Override
	public void pay_transection(loan loan) 
	{
		  
        lr.save(loan);	
		
	}
	@Override
	public List<loan> paid_transections()
	{
		
		return lr.findAll();
	}
	@Override
	public void deletedata(int id) 
	{
		sr.deleteById(id);
	}
	@Override
	public List<loan> getloan(String email) 
	{
     List<loan> l5 = lr.findByEmail(email);

		return l5;
	}

}
