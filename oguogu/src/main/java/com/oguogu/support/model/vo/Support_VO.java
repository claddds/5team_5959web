package com.oguogu.support.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Support_VO {
	private String not_idx,not_title, not_content, not_date, not_fname, noting, admin_nickname, status;
	private MultipartFile file;

	public String getNot_title() {
		return not_title;
	}

	public void setNot_title(String not_title) {
		this.not_title = not_title;
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

	public String getNoting() {
		return noting;
	}

	public void setNoting(String noting) {
		this.noting = noting;
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
