package com.oguogu.ogudoctor.self.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.ogudoctor.self.model.vo.Ogu_Sym_VO;

@Repository
public class Ogu_Sym_DAO {
	// 실제 Mapper를 호출하는 클래스
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<Ogu_Sym_VO> getDiseaseName(String disInfoOption1) {
		return sqlSessionTemplate.selectList("ogusym.list",disInfoOption1);
	}
}

