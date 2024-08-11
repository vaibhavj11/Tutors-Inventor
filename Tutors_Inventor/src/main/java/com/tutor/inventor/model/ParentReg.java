package com.tutor.inventor.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ParentReg {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String fname;
	private String lname;
	@Column(unique = true)
	private String mobile;
	private String pass;
	@Column(unique = true)
	private String email;
	private String state;
	private String city;
	private String area;
	private String zip;
	



	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getFname() {
		return fname;
	}




	public void setFname(String fname) {
		this.fname = fname;
	}




	public String getLname() {
		return lname;
	}




	public void setLname(String lname) {
		this.lname = lname;
	}




	public String getMobile() {
		return mobile;
	}




	public void setMobile(String mobile) {
		this.mobile = mobile;
	}




	public String getPass() {
		return pass;
	}




	public void setPass(String pass) {
		this.pass = pass;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getState() {
		return state;
	}




	public void setState(String state) {
		this.state = state;
	}




	public String getCity() {
		return city;
	}




	public void setCity(String city) {
		this.city = city;
	}




	public String getArea() {
		return area;
	}




	public void setArea(String area) {
		this.area = area;
	}




	public String getZip() {
		return zip;
	}




	public void setZip(String zip) {
		this.zip = zip;
	}




	@Override
	public String toString() {
		return "TutorParentReg [id=" + id + ", fname=" + fname + ", lname=" + lname + ", mobile=" + mobile + ", pass="
				+ pass + ", email=" + email + ", state=" + state + ", city=" + city + ", area=" + area + ", zip=" + zip
				+ "]";
	}




	public ParentReg(int id, String fname, String lname, String mobile, String pass, String email, String state,
			String city, String area, String zip) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.mobile = mobile;
		this.pass = pass;
		this.email = email;
		this.state = state;
		this.city = city;
		this.area = area;
		this.zip = zip;
	}




	public ParentReg() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
