package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cust
{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private String pass;
	private String conf_pass;
	
	
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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getConf_pass() {
		return conf_pass;
	}
	public void setConf_pass(String conf_pass) {
		this.conf_pass = conf_pass;
	}
	
	@Override
	public String toString() {
		return "Cust [id=" + id + ", name=" + name + ", email=" + email + ", pass=" + pass + ", conf_pass=" + conf_pass
				+ "]";
	}
	

}
