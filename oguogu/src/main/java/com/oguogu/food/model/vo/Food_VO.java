package com.oguogu.food.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Food_VO {
	private String fd_idx, fd_name, fd_company, fd_fname,old_f_name, fd_age_group,
				   fd_pet_type, fd_info, fd_price, fd_link,
			       fd_type, fd_open, fd_like, admin_nickname,fd_date, status;
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

	public String getFd_idx() {
		return fd_idx;
	}

	public void setFd_idx(String fd_idx) {
		this.fd_idx = fd_idx;
	}

	public String getFd_name() {
		return fd_name;
	}

	public void setFd_name(String fd_name) {
		this.fd_name = fd_name;
	}

	public String getFd_company() {
		return fd_company;
	}

	public void setFd_company(String fd_company) {
		this.fd_company = fd_company;
	}

	public String getFd_fname() {
		return fd_fname;
	}

	public void setFd_fname(String fd_fname) {
		this.fd_fname = fd_fname;
	}

	public String getFd_age_group() {
		return fd_age_group;
	}

	public void setFd_age_group(String fd_age_group) {
		this.fd_age_group = fd_age_group;
	}

	public String getFd_pet_type() {
		return fd_pet_type;
	}

	public void setFd_pet_type(String fd_pet_type) {
		this.fd_pet_type = fd_pet_type;
	}

	public String getFd_info() {
		return fd_info;
	}

	public void setFd_info(String fd_info) {
		this.fd_info = fd_info;
	}

	public String getFd_price() {
		return fd_price;
	}

	public void setFd_price(String fd_price) {
		this.fd_price = fd_price;
	}

	public String getFd_link() {
		return fd_link;
	}

	public void setFd_link(String fd_link) {
		this.fd_link = fd_link;
	}

	public String getFd_type() {
		return fd_type;
	}

	public void setFd_type(String fd_type) {
		this.fd_type = fd_type;
	}

	public String getFd_open() {
		return fd_open;
	}

	public void setFd_open(String fd_open) {
		this.fd_open = fd_open;
	}

	public String getFd_like() {
		return fd_like;
	}

	public void setFd_like(String fd_like) {
		this.fd_like = fd_like;
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

	public String getFd_date() {
		return fd_date;
	}

	public void setFd_date(String fd_date) {
		this.fd_date = fd_date;
	}
}
