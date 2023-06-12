package com.example.demo.service;

import java.util.List;


import com.example.demo.model.Cust;
import com.example.demo.model.cust_apply;

public interface CustService 
{
	void getinfo(Cust c1);



	Object check_login(String email, String pass);

    void upload(cust_apply c3);
    
   List<cust_apply>getdata();
   
   List<Cust>viewmember();
   
   List<Cust>search(String name);
   
   Cust change_pass(String email);
   
   void update_pass(Cust c1);
   

} 
 