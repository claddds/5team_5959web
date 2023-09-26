package com.oguogu.pet.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.pet.model.vo.Pet_VO;

@Repository
public class Pet_DAO {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public int getPetProfile(String user_id) {
		return sqlSessionTemplate.selectOne("pet.getPetProfile",user_id);
	}
	
	public int getPetInsert(Pet_VO pvo) {
		return sqlSessionTemplate.insert("pet.getPetInsert",pvo);
	}
	
	public List<Pet_VO> getPetList(String user_id) {
		return sqlSessionTemplate.selectList("pet.getPetList",user_id);
	}
	
	public Pet_VO getPetProfileOnelist(String pet_idx) {
		return sqlSessionTemplate.selectOne("pet.getPetProfileOnelist",pet_idx);
	}
	
	public int getPetUpdate(Pet_VO pvo) {
		return sqlSessionTemplate.update("pet.getPetUpdate",pvo);
	}
	
	public int getPetDelete(String pet_idx) {
		return sqlSessionTemplate.delete("pet.getPetDelete",pet_idx);
	}
}
