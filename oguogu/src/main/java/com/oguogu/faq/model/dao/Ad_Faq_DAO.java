package com.oguogu.faq.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.faq.model.vo.FAQ_VO;


@Repository
public class Ad_Faq_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("faq_vo.count") ;
	}
	
	public int getSearchTotalCount(String searchtype, String keyword) {
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("searchtype", searchtype);
	    paramMap.put("keyword", keyword);

	    return sqlSessionTemplate.selectOne("faq_vo.searchcount", paramMap);
	}
	
	public List<FAQ_VO> getAd_Faq_List(int offset, int limit) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("faq_vo.list", map);
	}

	
	// 상세보기 
	public FAQ_VO getFaqAdminOneList(String faq_idx) {
		return sqlSessionTemplate.selectOne("faq_vo.onelist", faq_idx);
	}
	
	
	public int getFaqInsert(FAQ_VO faq_vo) {
		return sqlSessionTemplate.insert("faq_vo.insert", faq_vo);
	}
	
	public int getFaq_Update(FAQ_VO faq_vo) {
		int result = sqlSessionTemplate.update("faq_vo.update", faq_vo);
		return result;
	}
	
	public int getFaq_Delete(FAQ_VO faq_vo) {
		int result= sqlSessionTemplate.update("faq_vo.delete", faq_vo);
		return result;
	}

	public List<FAQ_VO> getSearch(String searchtype, String keyword, int limit, int offset) {
		 Map<String, Object> map = new HashMap<>();
		 map.put("searchtype", searchtype);
		 map.put("keyword", keyword);
		 map.put("limit", limit);
		 map.put("offset", offset);

	       return sqlSessionTemplate.selectList("faq_vo.search", map);
	}
}

