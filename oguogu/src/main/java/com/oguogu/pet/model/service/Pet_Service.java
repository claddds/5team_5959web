package com.oguogu.pet.model.service;

import com.oguogu.pet.model.vo.Pet_VO;

public interface Pet_Service {

	public int getPetProfile(String user_id);
	
	public int getPetInsert(Pet_VO pvo);
	
}
