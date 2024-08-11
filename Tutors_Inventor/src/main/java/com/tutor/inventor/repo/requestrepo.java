package com.tutor.inventor.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tutor.inventor.model.RequestDemo;


public interface requestrepo extends JpaRepository<RequestDemo, Integer> {

	List<RequestDemo>findByTutorId(Integer tutorreg_id);
}
