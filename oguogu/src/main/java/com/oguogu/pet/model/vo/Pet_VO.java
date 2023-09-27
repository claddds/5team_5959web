package com.oguogu.pet.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Pet_VO {
	private String pet_idx, pet_name, pet_fname, pet_type, pet_kind, pet_gender,pet_weight, pet_neute, pet_birth, status, user_id, old_pet_fname;
	
	//개월수를 저장하기 위한 변수, db에는 없음
	private int months;

	private MultipartFile file;

	
	public String getOld_pet_fname() {
		return old_pet_fname;
	}

	public void setOld_pet_fname(String old_pet_fname) {
		this.old_pet_fname = old_pet_fname;
	}

	public int getMonths() {
		return months;
	}

	public void setMonths(int months) {
		this.months = months;
	}

	public String getPet_weight() {
		return pet_weight;
	}

	public void setPet_weight(String pet_weight) {
		this.pet_weight = pet_weight;
	}

	public String getPet_idx() {
		return pet_idx;
	}

	public void setPet_idx(String pet_idx) {
		this.pet_idx = pet_idx;
	}

	public String getPet_name() {
		return pet_name;
	}

	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}

	public String getPet_fname() {
		return pet_fname;
	}

	public void setPet_fname(String pet_fname) {
		this.pet_fname = pet_fname;
	}

	public String getPet_type() {
		return pet_type;
	}

	public void setPet_type(String pet_type) {
		this.pet_type = pet_type;
	}

	public String getPet_kind() {
		return pet_kind;
	}

	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}

	public String getPet_gender() {
		return pet_gender;
	}

	public void setPet_gender(String pet_gender) {
		this.pet_gender = pet_gender;
	}

	public String getPet_neute() {
		return pet_neute;
	}

	public void setPet_neute(String pet_neute) {
		this.pet_neute = pet_neute;
	}

	public String getPet_birth() {
		return pet_birth;
	}

	public void setPet_birth(String pet_birth) {
		this.pet_birth = pet_birth;
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

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
}
