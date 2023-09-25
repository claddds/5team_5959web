package com.oguogu.pet.model.service;

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
}
