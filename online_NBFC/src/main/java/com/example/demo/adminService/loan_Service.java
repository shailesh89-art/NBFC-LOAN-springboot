package com.example.demo.adminService;

import java.util.List;

import com.example.demo.adminmodel.loan;

public interface loan_Service 
{
	//public <Emi> List<Emi>generateEmiTable(loan loan);
	
	void pay_transection(loan loan);
	
	List<loan>paid_transections();
	
	void deletedata(int id);
	
	List<loan>getloan(String email);

}
