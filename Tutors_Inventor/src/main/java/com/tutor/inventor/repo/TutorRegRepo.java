package com.tutor.inventor.repo;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tutor.inventor.model.TutorReg;
@Repository
public interface TutorRegRepo extends JpaRepository<TutorReg, Integer> {
	List<TutorReg> findByStateAndCityAndArea(String state, String city, String area);
	long count();
	TutorReg findByEmail(String email);
}
