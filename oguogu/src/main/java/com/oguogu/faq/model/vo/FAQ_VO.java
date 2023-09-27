package com.oguogu.faq.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class FAQ_VO {
	
	private String faq_idx, faq_title, faq_content, faq_date, faq_fname,old_f_name, faq_ing, faq_type, faq_pwd, user_id, admin_nickname, status;
	private MultipartFile file;
	
	
	
	public String getOld_f_name() {
		return old_f_name;
	}

	public void setOld_f_name(String old_f_name) {
		this.old_f_name = old_f_name;
	}

	public String getFaq_idx() {
		return faq_idx;
	}

	public void setFaq_idx(String faq_idx) {
		this.faq_idx = faq_idx;
	}

	public String getFaq_title() {
		return faq_title;
	}

	public void setFaq_title(String faq_title) {
		this.faq_title = faq_title;
	}

	public String getFaq_content() {
		return faq_content;
	}

	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}

	public String getFaq_date() {
		return faq_date;
	}

	public void setFaq_date(String faq_date) {
		this.faq_date = faq_date;
	}

	public String getFaq_fname() {
		return faq_fname;
	}

	public void setFaq_fname(String faq_fname) {
		this.faq_fname = faq_fname;
	}

	public String getFaq_ing() {
		return faq_ing;
	}

	public void setFaq_ing(String faq_ing) {
		this.faq_ing = faq_ing;
	}

	public String getFaq_type() {
		return faq_type;
	}

	public void setFaq_type(String faq_type) {
		this.faq_type = faq_type;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getFaq_pwd() {
		return faq_pwd;
	}

	public void setFaq_pwd(String faq_pwd) {
		this.faq_pwd = faq_pwd;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getAdmin_nickname() {
		return admin_nickname;
	}

	public void setAdmin_nickname(String admin_nickname) {
		this.admin_nickname = admin_nickname;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
