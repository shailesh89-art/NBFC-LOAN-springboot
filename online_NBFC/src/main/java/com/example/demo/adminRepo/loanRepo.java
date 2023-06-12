package com.example.demo.adminRepo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.adminmodel.loan;
@Repository
public interface loanRepo extends JpaRepository<loan,Integer>
{

	List<loan> findByEmail(String email);

} 
