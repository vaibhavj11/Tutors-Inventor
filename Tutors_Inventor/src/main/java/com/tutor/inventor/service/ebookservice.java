package com.tutor.inventor.service;

import java.util.List;

import com.tutor.inventor.model.ebook;

public interface ebookservice {

	 public void uploadFile( ebook ebk);
	 public ebook getfile(int id);
	 List<ebook>ebooklist(ebook ebs);
	 long totalebook();
}
