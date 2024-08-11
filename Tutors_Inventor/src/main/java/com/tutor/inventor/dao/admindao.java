package com.tutor.inventor.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tutor.inventor.model.adminpage;
import com.tutor.inventor.repo.adminrepo;
import com.tutor.inventor.service.adminservice;
@Service
public class admindao implements adminservice {
	
	@Autowired
	adminrepo adr;

	@Override
	public adminpage login(String username, String password) {
	adminpage admin=	adr.findByUsername(username);
	if (admin==null ||!admin.getPassword().equals(password)) {
		throw new IllegalArgumentException("invalid");
		
		
	}
		
		
		return admin;
	}

}
