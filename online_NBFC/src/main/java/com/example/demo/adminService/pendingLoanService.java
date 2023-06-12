package com.example.demo.adminService;


import java.util.List;

import com.example.demo.adminmodel.pendingLoan;
import com.example.demo.adminmodel.status;

public interface pendingLoanService 
{
	status pendingdata(int id);
	
	void savedata(pendingLoan ploan);
	
	List<pendingLoan> pending_details();
	
	pendingLoan approve_pending(int id);
	
	void delete_pending(int id);
	
	void updatepending(pendingLoan ploan);

}

