package com.oguogu.faq.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.faq.model.vo.FAQ_VO;

@Repository
public class FAQ_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 전체 게시글 수
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("faq.count");
	}
	
	// 페이징 처리를 위한 리스트
	public List<FAQ_VO> getList(int offset, int limit){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("faq.list",map);
	}

	
	// 게시글 상세보기 (FAQ 테이블 글)
	public FAQ_VO getOneList(String faq_idx) {
		return sqlSessionTemplate.selectOne("faq.onelist", faq_idx);
	}
	
}
