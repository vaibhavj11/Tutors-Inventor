package com.tutor.inventor.model;


import java.util.Arrays;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.lang.NonNull;




@Entity

public class ebook {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ebook_id")
    private int id;

    @Column(name = "ebook_name")
    private String name;

    @Column(name = "publisher_name")
    private String pname;

    @Column(name = "description")
    private String desc;

    @Transient
    @Column(name = "file_url")
    private String url;

    @NonNull
    private String filename;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	@Override
	public String toString() {
		return "ebook [id=" + id + ", name=" + name + ", pname=" + pname + ", desc=" + desc + ", url=" + url
				+ ", filename=" + filename + "]";
	}

	

}
	