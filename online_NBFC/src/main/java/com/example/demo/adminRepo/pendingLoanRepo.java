package com.example.demo.adminRepo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.example.demo.adminmodel.pendingLoan;
@Repository
public interface pendingLoanRepo extends JpaRepository<pendingLoan,Integer> {

	

}
