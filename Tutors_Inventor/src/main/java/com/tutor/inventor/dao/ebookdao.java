package com.tutor.inventor.dao;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.tutor.inventor.model.ebook;
import com.tutor.inventor.repo.ebookrepo;
import com.tutor.inventor.service.ebookservice;
@Service
public class ebookdao implements ebookservice{

	
	@Autowired
	ebookrepo er;

	@Override
	public void uploadFile(ebook ebk) {
		er.save(ebk);
		
	}

	

	@Override
	public List<ebook> ebooklist(ebook ebs) {
		
		return er.findAll();
	}



	@Override
	public ebook getfile(int id) {
		// TODO Auto-generated method stub
		return er.getById(id);
	}



	@Override
	public long totalebook() {
		
		return er.count();
	}

	

	

	
	
	
	

	
		
	}
	
	
	


