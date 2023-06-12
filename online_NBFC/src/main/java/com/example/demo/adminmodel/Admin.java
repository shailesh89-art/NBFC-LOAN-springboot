package com.example.demo.adminmodel;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Admin 
{ 
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String Name;
	private String Password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", Name=" + Name + ", Password=" + Password + "]";
	}
	

}
