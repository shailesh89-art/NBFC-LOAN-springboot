package com.example.demo.adminDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.adminRepo.pendingLoanRepo;
import com.example.demo.adminRepo.statusRepo;
import com.example.demo.adminService.pendingLoanService;

import com.example.demo.adminmodel.pendingLoan;
import com.example.demo.adminmodel.status;
@Service
public class pendingLoanDao implements pendingLoanService {

	@Autowired
	statusRepo sr;
	
	@Autowired
	pendingLoanRepo plr;
	
	@Override
	public status pendingdata(int id) 
	{
		status ps = sr.getById(id);
		return ps;
	}

	@Override
	public void savedata(pendingLoan ploan) 
	{
		plr.save(ploan);
		
	}

	@Override
	public List<pendingLoan> pending_details() 
	{
		return plr.findAll();
	}

	@Override
	public pendingLoan approve_pending(int id) 
	{
		pendingLoan pl = plr.getById(id);
		return pl;
		
	}

	@Override
	public void delete_pending(int id) 
	{
		
		plr.deleteById(id);
	}

	@Override
	public void updatepending(pendingLoan ploan)
	{
		plr.save(ploan);
		
	}

	

	

}
