package com.tutor.inventor.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.tutor.inventor.model.ebook;
@Repository
public interface ebookrepo extends JpaRepository<ebook, Integer> {
	
	long count();

}
