package com.oguogu.support.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.food.model.vo.Food_VO;
import com.oguogu.support.model.vo.Support_VO;


@Repository
public class Ad_Sup_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("sup_vo.count") ;
	}
	
	public List<Support_VO> getAd_Sup_List(int offset, int limit) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("sup_vo.list", map);
	}

	// 상세보기 
	public Support_VO getSupAdminOneList(String not_idx) {
		return sqlSessionTemplate.selectOne("sup_vo.onelist", not_idx);
	}
	
	
	public int getSupInsert(Support_VO sup_vo) {
		return sqlSessionTemplate.insert("sup_vo.insert", sup_vo);
	}
	
	public int getSup_Update(Support_VO sup_vo) {
		int result = sqlSessionTemplate.update("sup_vo.update", sup_vo);
		return result;
	}
	
	public int getSup_Delete(Support_VO sup_vo) {
		int result= sqlSessionTemplate.update("sup_vo.delete", sup_vo);
		return result;
	}
	
	public int getSearchTotalCount(String searchtype, String keyword) {
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("searchtype", searchtype);
	    paramMap.put("keyword", keyword);

	    return sqlSessionTemplate.selectOne("sup_vo.searchcount", paramMap);
	}
	
	public List<Support_VO> getSearch(String searchtype, String keyword, int limit, int offset) {
		 Map<String, Object> map = new HashMap<>();
		 map.put("searchtype", searchtype);
		 map.put("keyword", keyword);
		 map.put("limit", limit);
		 map.put("offset", offset);

	       return sqlSessionTemplate.selectList("sup_vo.search", map);
	}

}

