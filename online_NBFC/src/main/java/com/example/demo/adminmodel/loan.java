package com.example.demo.adminmodel;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class loan
{
	 @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	   private int id;
	   private String name;
	   private String email;
	   private String transection_amt;
	   private String loan_period;
	   private String total_balance;
	   private String payment_date;
	   private String emi_amount;
	   private String transection_status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTransection_amt() {
		return transection_amt;
	}
	public void setTransection_amt(String transection_amt) {
		this.transection_amt = transection_amt;
	}
	public String getLoan_period() {
		return loan_period;
	}
	public void setLoan_period(String loan_period) {
		this.loan_period = loan_period;
	}
	public String getTotal_balance() {
		return total_balance;
	}
	public void setTotal_balance(String total_balance) {
		this.total_balance = total_balance;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public String getEmi_amount() {
		return emi_amount;
	}
	public void setEmi_amount(String emi_amount) {
		this.emi_amount = emi_amount;
	}
	public String getTransection_status() {
		return transection_status;
	}
	public void setTransection_status(String transection_status) {
		this.transection_status = transection_status;
	}
	@Override
	public String toString() {
		return "loan [id=" + id + ", name=" + name + ", email=" + email + ", transection_amt=" + transection_amt
				+ ", loan_period=" + loan_period + ", total_balance=" + total_balance + ", payment_date=" + payment_date
				+ ", emi_amount=" + emi_amount + ", transection_status=" + transection_status + "]";
	}
	
	   

}
