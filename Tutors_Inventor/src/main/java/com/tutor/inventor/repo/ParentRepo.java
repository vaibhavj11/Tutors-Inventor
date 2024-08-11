package com.tutor.inventor.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tutor.inventor.model.ParentReg;

@Repository
public interface ParentRepo extends JpaRepository<ParentReg, Integer> {
	public ParentReg findByEmail(String email);
	public long count();
	

}
