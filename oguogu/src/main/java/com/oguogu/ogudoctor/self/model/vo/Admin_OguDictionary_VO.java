package com.oguogu.ogudoctor.self.model.vo;

import org.springframework.web.multipart.MultipartFile;

public class Admin_OguDictionary_VO {
	private String dictionary_idx, pet_kind, disease_category, disease_name, disease_explain, disease_cause,
	dis_info, preventive, weak_kind, cure, risk, management_need, occure_frequency, status;

	public String getDictionary_idx() {
		return dictionary_idx;
	}

	public void setDictionary_idx(String dictionary_idx) {
		this.dictionary_idx = dictionary_idx;
	}

	public String getPet_kind() {
		return pet_kind;
	}

	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}

	public String getDisease_category() {
		return disease_category;
	}

	public void setDisease_category(String disease_category) {
		this.disease_category = disease_category;
	}

	public String getDisease_name() {
		return disease_name;
	}

	public void setDisease_name(String disease_name) {
		this.disease_name = disease_name;
	}

	public String getDisease_explain() {
		return disease_explain;
	}

	public void setDisease_explain(String disease_explain) {
		this.disease_explain = disease_explain;
	}

	public String getDisease_cause() {
		return disease_cause;
	}

	public void setDisease_cause(String disease_cause) {
		this.disease_cause = disease_cause;
	}

	public String getDis_info() {
		return dis_info;
	}

	public void setDis_info(String dis_info) {
		this.dis_info = dis_info;
	}

	public String getPreventive() {
		return preventive;
	}

	public void setPreventive(String preventive) {
		this.preventive = preventive;
	}

	public String getWeak_kind() {
		return weak_kind;
	}

	public void setWeak_kind(String weak_kind) {
		this.weak_kind = weak_kind;
	}

	public String getCure() {
		return cure;
	}

	public void setCure(String cure) {
		this.cure = cure;
	}

	public String getRisk() {
		return risk;
	}

	public void setRisk(String risk) {
		this.risk = risk;
	}

	public String getManagement_need() {
		return management_need;
	}

	public void setManagement_need(String management_need) {
		this.management_need = management_need;
	}

	public String getOccure_frequency() {
		return occure_frequency;
	}

	public void setOccure_frequency(String occure_frequency) {
		this.occure_frequency = occure_frequency;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
