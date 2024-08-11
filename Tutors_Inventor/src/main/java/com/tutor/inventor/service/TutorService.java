package com.tutor.inventor.service;

import java.util.List;

import com.tutor.inventor.model.ParentReg;
import com.tutor.inventor.model.TutorReg;

public interface TutorService  {
	void insertdata(TutorReg trr);
	List<TutorReg> search(String state, String city, String area);
	long totaltutor();
	List<TutorReg> allparent(TutorReg tp);
	public TutorReg login(String email,String pass);
	void delete(int id);
	
	TutorReg edittutor(int id);
	void saveeditdata(TutorReg tr);
	TutorReg findpass(String email);
}
