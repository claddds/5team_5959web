package com.oguogu.pet.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.pet.model.dao.Pet_DAO;
import com.oguogu.pet.model.vo.Pet_VO;

@Service
public class Pet_ServiceImpl implements Pet_Service {

	
	@Autowired
	Pet_DAO pet_DAO;
	
	@Override
	public int getPetProfile(String user_id) {
		return pet_DAO.getPetProfile(user_id);
	}
	
	@Override
	public int getPetInsert(Pet_VO pvo) {
		return pet_DAO.getPetInsert(pvo);
	}
	
	
	@Override
	public List<Pet_VO> getPetList(String user_id) {
		return pet_DAO.getPetList(user_id);
	}
	
	//펫 상세보기
	@Override
	public Pet_VO getPetProfileOnelist(String pet_idx) {
		return pet_DAO.getPetProfileOnelist(pet_idx);
	}
	
	@Override
	public int getPetUpdate(Pet_VO pvo) {
		return pet_DAO.getPetUpdate(pvo);
	}
	
	@Override
	public int getPetDelete(String pet_idx) {
		return pet_DAO.getPetDelete(pet_idx);
	}
}
