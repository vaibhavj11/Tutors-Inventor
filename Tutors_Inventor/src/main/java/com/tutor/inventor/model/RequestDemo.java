package com.tutor.inventor.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class RequestDemo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id1;
	private String message;
	private String email;
	private String mobile;
	
	@ManyToOne
	@JoinColumn(name = "tutorreg_id")
	private TutorReg tutor;

	public int getId1() {
		return id1;
	}

	public void setId1(int id1) {
		this.id1 = id1;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public TutorReg getTutor() {
		return tutor;
	}

	public void setTutor(TutorReg tutor) {
		this.tutor = tutor;
	}
	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "RequestDemo [id1=" + id1 + ", message=" + message + ", email=" + email + ", mobile=" + mobile
				+ ", tutor=" + tutor + "]";
	}

	

	
	
	
}
