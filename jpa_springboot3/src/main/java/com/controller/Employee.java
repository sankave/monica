package com.controller;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Employee {
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
private String username;
private String city;
private int mobilenumber;
private String password;
private String confirmpassword;
private String email;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public int getMobilenumber() {
	return mobilenumber;
}
public void setMobilenumber(int mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getConfirmpassword() {
	return confirmpassword;
}
public void setConfirmpassword(String confirmpassword) {
	this.confirmpassword = confirmpassword;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Employee() {
	super();
}
public Employee(String username, String city, int mobilenumber, String password, String confirmpassword, String email) {
	super();
	this.username = username;
	this.city = city;
	this.mobilenumber = mobilenumber;
	this.password = password;
	this.confirmpassword = confirmpassword;
	this.email = email;
}

}
