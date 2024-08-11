package com.tutor.inventor.service;

import java.util.List;

import com.tutor.inventor.model.RequestDemo;

public interface requestservice {

	void request(RequestDemo req);
	
	 public List<RequestDemo> getRequestDemosByTutorId(Integer tutorreg_id);
}
