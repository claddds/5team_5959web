package com.oguogu.comment.model.vo;

public class Comment_VO {

	private String com_idx, com_content, com_date, user_id, status, lo_idx;
	
	//mypage 댓글에서 쓰려고 하나 추가함
	private String lo_type;
	
	public String getLo_type() {
		return lo_type;
	}

	public void setLo_type(String lo_type) {
		this.lo_type = lo_type;
	}

	public String getCom_idx() {
		return com_idx;
	}

	public void setCom_idx(String com_idx) {
		this.com_idx = com_idx;
	}

	public String getCom_content() {
		return com_content;
	}

	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}

	public String getCom_date() {
		return com_date;
	}

	public void setCom_date(String com_date) {
		this.com_date = com_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getLo_idx() {
		return lo_idx;
	}

	public void setLo_idx(String lo_idx) {
		this.lo_idx = lo_idx;
	}
	
	
}
