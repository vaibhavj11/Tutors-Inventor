package com.tutor.inventor.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tutor.inventor.model.Contact;
import com.tutor.inventor.repo.contactrepo;
import com.tutor.inventor.service.contactservice;
@Service
public class contactdao implements contactservice{
	@Autowired
	contactrepo cc;

	@Override
	public void contact(Contact c) {

cc.save(c);
		
	}

}
