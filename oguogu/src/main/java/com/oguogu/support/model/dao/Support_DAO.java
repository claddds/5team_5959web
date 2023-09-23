package com.oguogu.support.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.support.model.vo.Support_VO;


@Repository
public class Support_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 게시글 전체 수
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("support.count");
	}
	
	// 페이징 처리를 위한 리스트
	public List<Support_VO> getList(int offset, int limit){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("support.list",map);
	}	
	
	// 게시글 상세보기
	public Support_VO getOneList(String not_idx) {
		return sqlSessionTemplate.selectOne("support.onelist", not_idx);
	}
	
}
