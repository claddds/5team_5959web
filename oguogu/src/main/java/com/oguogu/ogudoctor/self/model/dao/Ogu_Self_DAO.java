package com.oguogu.ogudoctor.self.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;

@Repository
public class Ogu_Self_DAO {
	// 실제 Mapper를 호출하는 클래스
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 서비스에서 DB처리하는 메서드를 모두 받아 줘야 한다.
	public List<Ogu_Self_VO> getDogmealfoodlist(){
		return sqlSessionTemplate.selectList("oguself.dogmealfoodlist");
	}

	public List<Ogu_Self_VO> getDogmealwaterlist(){
		return sqlSessionTemplate.selectList("oguself.dogmealwaterlist");
	}
}

