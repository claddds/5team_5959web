package com.oguogu.ogudoctor.self.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Ogu_Self_VO {
	private String ogu_idx, pet_kind, body_part, sym_chk, period_line, dis_info, dis_info_img,
	admin_nickname, ogu_date, TIMESTAMP, status;
	
	private MultipartFile file;

	public String getOgu_idx() {
		return ogu_idx;
	}

	public void setOgu_idx(String ogu_idx) {
		this.ogu_idx = ogu_idx;
	}

	public String getPet_kind() {
		return pet_kind;
	}

	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}

	public String getBody_part() {
		return body_part;
	}

	public void setBody_part(String body_part) {
		this.body_part = body_part;
	}

	public String getSym_chk() {
		return sym_chk;
	}

	public void setSym_chk(String sym_chk) {
		this.sym_chk = sym_chk;
	}

	public String getPeriod_line() {
		return period_line;
	}

	public void setPeriod_line(String period_line) {
		this.period_line = period_line;
	}

	public String getDis_info() {
		return dis_info;
	}

	public void setDis_info(String dis_info) {
		this.dis_info = dis_info;
	}

	public String getDis_info_img() {
		return dis_info_img;
	}

	public void setDis_info_img(String dis_info_img) {
		this.dis_info_img = dis_info_img;
	}

	public String getAdmin_nickname() {
		return admin_nickname;
	}

	public void setAdmin_nickname(String admin_nickname) {
		this.admin_nickname = admin_nickname;
	}

	public String getOgu_date() {
		return ogu_date;
	}

	public void setOgu_date(String ogu_date) {
		this.ogu_date = ogu_date;
	}

	public String getTIMESTAMP() {
		return TIMESTAMP;
	}

	public void setTIMESTAMP(String tIMESTAMP) {
		TIMESTAMP = tIMESTAMP;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	
}
