package com.oguogu.qna.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Qna_VO {
	private String one_idx, one_title, one_content, one_ans, one_date, one_fname, one_pwd, one_ing, one_lock, status, user_id , ans_ing , one_old_fname, admin_nickname;
	private MultipartFile file;
	public String getOne_idx() {
		return one_idx;
	}
	public void setOne_idx(String one_idx) {
		this.one_idx = one_idx;
	}
	public String getOne_title() {
		return one_title;
	}
	public void setOne_title(String one_title) {
		this.one_title = one_title;
	}
	public String getOne_content() {
		return one_content;
	}
	public void setOne_content(String one_content) {
		this.one_content = one_content;
	}
	public String getOne_ans() {
		return one_ans;
	}
	public void setOne_ans(String one_ans) {
		this.one_ans = one_ans;
	}
	public String getOne_date() {
		return one_date;
	}
	public void setOne_date(String one_date) {
		this.one_date = one_date;
	}
	public String getOne_fname() {
		return one_fname;
	}
	public void setOne_fname(String one_fname) {
		this.one_fname = one_fname;
	}
	public String getOne_pwd() {
		return one_pwd;
	}
	public void setOne_pwd(String one_pwd) {
		this.one_pwd = one_pwd;
	}
	public String getOne_ing() {
		return one_ing;
	}
	public void setOne_ing(String one_ing) {
		this.one_ing = one_ing;
	}
	public String getOne_lock() {
		return one_lock;
	}
	public void setOne_lock(String one_lock) {
		this.one_lock = one_lock;
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
	public String getAns_ing() {
		return ans_ing;
	}
	public void setAns_ing(String ans_ing) {
		this.ans_ing = ans_ing;
	}
	public String getOne_old_fname() {
		return one_old_fname;
	}
	public void setOne_old_fname(String one_old_fname) {
		this.one_old_fname = one_old_fname;
	}
	public String getAdmin_nickname() {
		return admin_nickname;
	}
	public void setAdmin_nickname(String admin_nickname) {
		this.admin_nickname = admin_nickname;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	
	
}
