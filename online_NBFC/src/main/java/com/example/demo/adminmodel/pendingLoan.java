package com.example.demo.adminmodel;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class pendingLoan 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private String address;
	private String pnumber;
	private String loantenure;
	private String loanamt;
	private int intrate;
	private String pfees;
	private String finalamount;
	private String choice;
	private String loanchoice;
	private String occupation;
	private String income;
	private String status;
	private String message;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPnumber() {
		return pnumber;
	}
	public void setPnumber(String pnumber) {
		this.pnumber = pnumber;
	}
	public String getLoantenure() {
		return loantenure;
	}
	public void setLoantenure(String loantenure) {
		this.loantenure = loantenure;
	}
	public String getLoanamt() {
		return loanamt;
	}
	public void setLoanamt(String loanamt) {
		this.loanamt = loanamt;
	}
	public int getIntrate() {
		return intrate;
	}
	public void setIntrate(int intrate) {
		this.intrate = intrate;
	}
	public String getPfees() {
		return pfees;
	}
	public void setPfees(String pfees) {
		this.pfees = pfees;
	}
	public String getFinalamount() {
		return finalamount;
	}
	public void setFinalamount(String finalamount) {
		this.finalamount = finalamount;
	}
	public String getChoice() {
		return choice;
	}
	public void setChoice(String choice) {
		this.choice = choice;
	}
	public String getLoanchoice() {
		return loanchoice;
	}
	public void setLoanchoice(String loanchoice) {
		this.loanchoice = loanchoice;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "pendingLoan [id=" + id + ", name=" + name + ", email=" + email + ", address=" + address + ", pnumber="
				+ pnumber + ", loantenure=" + loantenure + ", loanamt=" + loanamt + ", intrate=" + intrate + ", pfees="
				+ pfees + ", finalamount=" + finalamount + ", choice=" + choice + ", loanchoice=" + loanchoice
				+ ", occupation=" + occupation + ", income=" + income + ", status=" + status + ", message=" + message
				+ "]";
	}

	
	
}
