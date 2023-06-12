package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Cust;
import com.example.demo.model.cust_apply;
@Repository
public interface CustRepo extends JpaRepository<Cust,Integer>
{





	Cust findByEmail(String email);

	void save(cust_apply c3);

	Object findByEmailAndPass(String email, String pass);

	List<Cust> findAllByname(String name);

	Cust getByEmail(String email);

	

}
 