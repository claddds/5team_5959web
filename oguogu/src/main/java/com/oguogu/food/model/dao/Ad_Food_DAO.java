package com.oguogu.food.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.faq.model.vo.FAQ_VO;
import com.oguogu.food.model.vo.Food_VO;


@Repository
public class Ad_Food_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("ad_f_vo.count") ;
	}
	
	public List<Food_VO> getAd_Food_List(int offset, int limit) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("ad_f_vo.list", map);
	}

	// 상세보기 
	public Food_VO getFoodAdminOneList(String fd_idx) {
		return sqlSessionTemplate.selectOne("ad_f_vo.onelist", fd_idx);
	}
	
	
	public int getFoodInsert(Food_VO ad_f_vo) {
		return sqlSessionTemplate.insert("ad_f_vo.insert", ad_f_vo);
	}
	
	public int getFood_Update(Food_VO ad_f_vo) {
		int result = sqlSessionTemplate.update("ad_f_vo.update", ad_f_vo);
		return result;
	}
	
	public int getFood_Delete(Food_VO ad_f_vo) {
		int result= sqlSessionTemplate.update("ad_f_vo.delete", ad_f_vo);
		return result;
	}
	public int getSearchTotalCount(String searchtype, String keyword) {
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("searchtype", searchtype);
	    paramMap.put("keyword", keyword);

	    return sqlSessionTemplate.selectOne("ad_f_vo.searchcount", paramMap);
	}
	
	public List<Food_VO> getSearch(String searchtype, String keyword, int limit, int offset) {
		 Map<String, Object> map = new HashMap<>();
		 map.put("searchtype", searchtype);
		 map.put("keyword", keyword);
		 map.put("limit", limit);
		 map.put("offset", offset);

	       return sqlSessionTemplate.selectList("ad_f_vo.search", map);
	}
}

