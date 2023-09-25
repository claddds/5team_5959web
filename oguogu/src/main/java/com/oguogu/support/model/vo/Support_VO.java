package com.oguogu.support.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Support_VO {
	private String not_idx, not_title, not_content, not_date, not_fname, not_ing,old_f_name, admin_nickname, status;
	private MultipartFile file;

	
	public String getOld_f_name() {
		return old_f_name;
	}

	public void setOld_f_name(String old_f_name) {
		this.old_f_name = old_f_name;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getNot_idx() {
		return not_idx;
	}

	public void setNot_idx(String not_idx) {
		this.not_idx = not_idx;
	}

	public String getNot_title() {
		return not_title;
	}

	public void setNot_title(String not_title) {
		this.not_title = not_title;
	}

	public String getNot_content() {
		return not_content;
	}

	public void setNot_content(String not_content) {
		this.not_content = not_content;
	}

	public String getNot_date() {
		return not_date;
	}

	public void setNot_date(String not_date) {
		this.not_date = not_date;
	}

	public String getNot_fname() {
		return not_fname;
	}

	public void setNot_fname(String not_fname) {
		this.not_fname = not_fname;
	}

	public String getNot_ing() {
		return not_ing;
	}

	public void setNot_ing(String not_ing) {
		this.not_ing = not_ing;
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
