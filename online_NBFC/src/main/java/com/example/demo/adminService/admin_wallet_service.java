package com.example.demo.adminService;

import java.util.List;

import com.example.demo.adminmodel.admin_wallet;

public interface admin_wallet_service 
{
	void save_amt(admin_wallet ad_amt);
	
	List<admin_wallet>Show_amt();
	
	admin_wallet update_wallet(int id);
	
	void updatew(admin_wallet awallet);
	
	admin_wallet updata(String amount);

}
