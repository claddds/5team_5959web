package com.oguogu.user.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class User_VO {
	private String user_id, pw, email, nickname, type ,initdate ,enddate , user_fname, status , old_user_fname;
	
	private MultipartFile file;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getInitdate() {
		return initdate;
	}

	public void setInitdate(String initdate) {
		this.initdate = initdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getUser_fname() {
		return user_fname;
	}

	public void setUser_fname(String user_fname) {
		this.user_fname = user_fname;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOld_user_fname() {
		return old_user_fname;
	}

	public void setOld_user_fname(String old_user_fname) {
		this.old_user_fname = old_user_fname;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	
}
