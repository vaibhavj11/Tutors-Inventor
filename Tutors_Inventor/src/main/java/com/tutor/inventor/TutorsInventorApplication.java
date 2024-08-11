package com.tutor.inventor;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.tutor.inventor.model.adminpage;
import com.tutor.inventor.repo.adminrepo;

@SpringBootApplication
public class TutorsInventorApplication {

	public static void main(String[] args) {
		ApplicationContext context = SpringApplication.run(TutorsInventorApplication.class, args);

		adminrepo repo = context.getBean(adminrepo.class);
		adminpage adminpage = new adminpage();
		adminpage.setId(1);
		adminpage.setUsername("admin@tutorinventor.com");
		adminpage.setPassword("admin@123");
		repo.save(adminpage);

	}

}
