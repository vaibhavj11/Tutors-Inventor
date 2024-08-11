package com.tutor.inventor.dao;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.tutor.inventor.model.ParentReg;

import com.tutor.inventor.repo.TutorRegRepo;
import com.tutor.inventor.repo.ParentRepo;
import com.tutor.inventor.service.ParentService;

@Service
public class ParentDao implements ParentService {
	
	

    

	@Autowired
	ParentRepo tt;
	@Autowired
	TutorRegRepo trs;
	
	@Override
    public void insertdata(ParentReg tr) {

        tt.save(tr);

       
        
    }


	@Override
	public ParentReg login(String email, String pass) {
		ParentReg parent= tt.findByEmail(email);
		if(parent==null ||!parent.getPass().equals(pass)) {
			throw new IllegalArgumentException("Invalid account number or password");
		}
		return parent;
	}


	@Override
	public long totalparent() {
		
		return tt.count();
	}


	@Override
	public List<ParentReg> allparent(ParentReg pp) {
		
		return tt.findAll();
	}


	@Override
	public void delete(int id) {
		tt.deleteById(id);
	}


	@Override
	public ParentReg editparent(int id) {
		ParentReg pp= tt.getById(id);
		return pp;
	}


	@Override
	public ParentReg findpass(String email) {
	ParentReg p=	tt.findByEmail(email);
	if (p==null) {
		throw new IllegalArgumentException("invalid");
		
	}
		return p;
	}

	

	

	

}
