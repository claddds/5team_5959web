package com.oguogu.education.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.education.model.vo.Education_VO;


@Repository
public class Education_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("education.count") ;
	}
	
//	public List<Education_VO> getEdu_List(int offset, int limit) {
//		Map<String, Integer> map = new HashMap<String, Integer>();
//		map.put("limit", limit);
//		map.put("offset", offset);
//		return sqlSessionTemplate.selectList("edu.list", map);
//	}
	
	public int getEdudInsert(Education_VO evo) {
		return sqlSessionTemplate.insert("edu.insert", evo);
	}
	
	public List<Education_VO> getEdu_List() {
		return sqlSessionTemplate.selectList("edu.list");
	}
}

