package com.example.demo.adminmodel;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.PrePersist;
@Entity
public class admin_wallet 
{
	 @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int amount;
	private String time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	

	@Override
	public String toString() {
		return "admin_wallet [id=" + id + ", amount=" + amount + ", time=" + time + "]";
	}
	
	

}
