package com.tutor.inventor.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tutor.inventor.model.Contact;
@Repository
public interface contactrepo extends JpaRepository<Contact, Integer> {

}
