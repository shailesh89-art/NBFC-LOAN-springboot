package com.example.demo.adminRepo;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.adminmodel.admin_wallet;
@Repository
public interface admin_wallet_Repo extends JpaRepository<admin_wallet,Integer> {

	
	admin_wallet findByAmount(String amount);

	void getByAmount(admin_wallet awallet);

}
