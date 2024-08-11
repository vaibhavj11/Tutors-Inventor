package com.tutor.inventor.service;

import java.text.Bidi;
import java.util.List;

import com.tutor.inventor.model.ParentReg;
import com.tutor.inventor.model.TutorReg;

public interface ParentService {

	void insertdata(ParentReg tr);
	ParentReg login(String email,String pass);
	long totalparent();
	List<ParentReg> allparent(ParentReg pp);
	void delete(int id);
	ParentReg editparent(int id);
	ParentReg findpass(String email);
	
}
