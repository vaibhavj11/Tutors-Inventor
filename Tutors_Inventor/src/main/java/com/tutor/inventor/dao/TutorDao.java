package com.tutor.inventor.dao;

import java.util.Collections;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.aop.target.ThreadLocalTargetSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tutor.inventor.model.TutorReg;
import com.tutor.inventor.repo.TutorRegRepo;
import com.tutor.inventor.service.TutorService;

@Service
public class TutorDao implements TutorService{

	@Autowired
	TutorRegRepo trs;
	
	@Override
	public void insertdata(TutorReg trr) {
		trs.save(trr);
		
	}
	@Override
	public List<TutorReg> search(String state, String city, String area) {
	    
	    return trs.findByStateAndCityAndArea(state, city, area);
	}
	@Override
	public long totaltutor() {
		
		return trs.count();
	}
	@Override
	public List<TutorReg> allparent(TutorReg tp) {
		
		return trs.findAll();
	}
	@Override
	public TutorReg login(String email, String pass) {
	TutorReg tutor=trs.findByEmail(email);
	if(tutor==null ||!tutor.getPass().equals(pass)) {
		throw new IllegalArgumentException("Invalid");
		
	}
		
		return tutor;
	}
	@Override
	public void delete(int id) {
		trs.deleteById(id);
	}
	@Override
	public TutorReg edittutor(int id) {
		TutorReg tutor=trs.getById(id);
		return tutor;
	}
	@Override
	public void saveeditdata(TutorReg tr) {
		trs.save(tr);
		
	}
	@Override
	public TutorReg findpass(String email) {
	TutorReg t=	trs.findByEmail(email);
	if (t==null) {
		throw new IllegalArgumentException("Invalid");
		
	}
	
		return t;
	}
}
