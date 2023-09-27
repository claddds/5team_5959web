package com.oguogu.pet.model.service;

import java.util.List;

import com.oguogu.pet.model.vo.Pet_VO;

public interface Pet_Service {

	public int getPetProfile(String user_id);
	
	public int getPetInsert(Pet_VO pvo);
	
	public List<Pet_VO> getPetList(String user_id);
	
	public Pet_VO getPetProfileOnelist(String pet_idx);
	
	public int getPetUpdate(Pet_VO pvo);
	
	public int getPetDelete(String pet_idx);
}
