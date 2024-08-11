package com.tutor.inventor.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tutor.inventor.model.RequestDemo;
import com.tutor.inventor.repo.requestrepo;
import com.tutor.inventor.service.requestservice;
@Service
public class requestdao implements requestservice {

	@Autowired
	requestrepo rp;
	
	@Override
	public void request(RequestDemo req) {
		rp.save(req);
	}

	@Override
	public List<RequestDemo> getRequestDemosByTutorId(Integer tutorreg_id) {
		
		return rp.findByTutorId(tutorreg_id);
	}

}
