package com.oguogu.education.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Education_VO {
	private String edu_idx, edu_kind, edu_aml_kind, edu_title, edu_content, admin_nickname,  edu_F_name, edu_date, edu_hit, status ;
	private MultipartFile file;
	
	
	
	public String getEdu_F_name() {
		return edu_F_name;
	}

	public void setEdu_F_name(String edu_F_name) {
		this.edu_F_name = edu_F_name;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getEdu_idx() {
		return edu_idx;
	}

	public void setEdu_idx(String edu_idx) {
		this.edu_idx = edu_idx;
	}

	public String getEdu_kind() {
		return edu_kind;
	}

	public void setEdu_kind(String edu_kind) {
		this.edu_kind = edu_kind;
	}

	public String getEdu_aml_kind() {
		return edu_aml_kind;
	}

	public void setEdu_aml_kind(String edu_aml_kind) {
		this.edu_aml_kind = edu_aml_kind;
	}

	public String getEdu_title() {
		return edu_title;
	}

	public void setEdu_title(String edu_title) {
		this.edu_title = edu_title;
	}

	public String getEdu_content() {
		return edu_content;
	}

	public void setEdu_content(String edu_content) {
		this.edu_content = edu_content;
	}

	public String getAdmin_nickname() {
		return admin_nickname;
	}

	public void setAdmin_nickname(String admin_nickname) {
		this.admin_nickname = admin_nickname;
	}

	public String getEdu_date() {
		return edu_date;
	}

	public void setEdu_date(String edu_date) {
		this.edu_date = edu_date;
	}

	public String getEdu_hit() {
		return edu_hit;
	}

	public void setEdu_hit(String edu_hit) {
		this.edu_hit = edu_hit;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

}
