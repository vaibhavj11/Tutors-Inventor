package com.tutor.inventor.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tutor.inventor.model.adminpage;
@Repository
public interface adminrepo extends JpaRepository<adminpage, Integer>{

	public adminpage findByUsername(String username);
}
