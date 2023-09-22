package com.oguogu.lounge.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Lounge_VO {
	private String lo_idx, lo_title, lo_type, lo_content, lo_petkind, lo_date, lo_hit, lo_fname,
					status, user_id, lo_old_fname, lo_pwd, comment_cnt;
	public String getLo_pwd() {
		return lo_pwd;
	}

	public void setLo_pwd(String lo_pwd) {
		this.lo_pwd = lo_pwd;
	}

	private MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getLo_idx() {
		return lo_idx;
	}

	public void setLo_idx(String lo_idx) {
		this.lo_idx = lo_idx;
	}

	public String getLo_title() {
		return lo_title;
	}

	public void setLo_title(String lo_title) {
		this.lo_title = lo_title;
	}

	public String getLo_type() {
		return lo_type;
	}

	public void setLo_type(String lo_type) {
		this.lo_type = lo_type;
	}

	public String getLo_content() {
		return lo_content;
	}

	public void setLo_content(String lo_content) {
		this.lo_content = lo_content;
	}

	public String getLo_petkind() {
		return lo_petkind;
	}

	public void setLo_petkind(String lo_petkind) {
		this.lo_petkind = lo_petkind;
	}

	public String getLo_date() {
		return lo_date;
	}

	public void setLo_date(String lo_date) {
		this.lo_date = lo_date;
	}

	public String getLo_hit() {
		return lo_hit;
	}

	public void setLo_hit(String lo_hit) {
		this.lo_hit = lo_hit;
	}

	public String getLo_fname() {
		return lo_fname;
	}

	public void setLo_fname(String lo_fname) {
		this.lo_fname = lo_fname;
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

	public String getLo_old_fname() {
		return lo_old_fname;
	}

	public void setLo_old_fname(String lo_old_fname) {
		this.lo_old_fname = lo_old_fname;
	}

	public String getComment_cnt() {
		return comment_cnt;
	}

	public void setComment_cnt(String comment_cnt) {
		this.comment_cnt = comment_cnt;
	}

	
}
