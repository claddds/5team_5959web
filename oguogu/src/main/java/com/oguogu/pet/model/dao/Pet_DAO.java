package com.oguogu.pet.model.dao;

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
	
}
