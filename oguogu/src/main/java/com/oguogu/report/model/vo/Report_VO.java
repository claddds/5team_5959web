package com.oguogu.report.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Report_VO {
	
	private String rep_idx, rep_title, rep_content, rep_date, rep_fname, rep_ing, status, user_id, rep_pw, rep_lock;
	private MultipartFile file;
	
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getRep_idx() {
		return rep_idx;
	}

	public void setRep_idx(String rep_idx) {
		this.rep_idx = rep_idx;
	}

	public String getRep_title() {
		return rep_title;
	}

	public void setRep_title(String rep_title) {
		this.rep_title = rep_title;
	}

	public String getRep_content() {
		return rep_content;
	}

	public void setRep_content(String rep_content) {
		this.rep_content = rep_content;
	}

	public String getRep_date() {
		return rep_date;
	}

	public void setRep_date(String rep_date) {
		this.rep_date = rep_date;
	}

	public String getRep_fname() {
		return rep_fname;
	}

	public void setRep_fname(String rep_fname) {
		this.rep_fname = rep_fname;
	}

	public String getRep_ing() {
		return rep_ing;
	}

	public void setRep_ing(String rep_ing) {
		this.rep_ing = rep_ing;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getRep_pw() {
		return rep_pw;
	}

	public void setRep_pw(String rep_pw) {
		this.rep_pw = rep_pw;
	}

	public String getRep_lock() {
		return rep_lock;
	}

	public void setRep_lock(String rep_lock) {
		this.rep_lock = rep_lock;
	}
	
	
}
