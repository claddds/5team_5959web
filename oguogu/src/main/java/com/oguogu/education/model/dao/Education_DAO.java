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
		return sqlSessionTemplate.selectOne("edu.count") ;
	}
	public int getSearchTotalCount(String searchtype, String keyword) {
	    Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("searchtype", searchtype);
	    paramMap.put("keyword", keyword);

	    return sqlSessionTemplate.selectOne("edu.searchcount", paramMap);
	}
	
	public int getA_TotalCount() {
		return sqlSessionTemplate.selectOne("edu.Acount") ;
	}
	public int getB_TotalCount() {
		return sqlSessionTemplate.selectOne("edu.Bcount") ;
	}
	public int getC_TotalCount() {
		return sqlSessionTemplate.selectOne("edu.Ccount") ;
	}
	public List<Education_VO> getEdu_List(int offset, int limit) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("edu.list", map);
	}

	// 상세보기 
	public Education_VO getEduAdminOneList(String edu_idx) {
		return sqlSessionTemplate.selectOne("edu.onelist", edu_idx);
	}
	
	// 필수정보만 보기 
	public List<Education_VO> getEdu_Alist(int offset, int limit) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("edu.Alist", map);
	}
	
	// 양육정보만 보기 
	public List<Education_VO> getEdu_Blist(int offset, int limit) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("edu.Blist", map);
	}
	
	// 훈련정보만 보기 
	public List<Education_VO> getEdu_Clist(int offset, int limit) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("edu.Clist", map);
	}
	
	
	public int getEdudInsert(Education_VO evo) {
		return sqlSessionTemplate.insert("edu.insert", evo);
	}
	
	public int getEdu_Update(Education_VO evo) {
		int result = sqlSessionTemplate.update("edu.update", evo);
		return result;
	}
	
	public int getEdu_Delete(Education_VO evo) {
		int result= sqlSessionTemplate.update("edu.delete", evo);
		return result;
	}
	
	// 전체에서 검색 보기 
	public List<Education_VO> getSearch(String searchtype, String keyword, int limit, int offset) {
		 Map<String, Object> map = new HashMap<>();
		 map.put("searchtype", searchtype);
		 map.put("keyword", keyword);
		 map.put("limit", limit);
		 map.put("offset", offset);
 
	   return sqlSessionTemplate.selectList("edu.search", map);
	}
	
	// 필수정보만 보기 
	public List<Education_VO> getASearch(String searchtype, String keyword, int limit, int offset) {
		 Map<String, Object> map = new HashMap<>();
		 map.put("searchtype", searchtype);
		 map.put("keyword", keyword);
		 map.put("limit", limit);
		 map.put("offset", offset);
 
	   return sqlSessionTemplate.selectList("edu.Asearch", map);
	}
	
	// 필수정보만 보기 
	public List<Education_VO> getBSearch(String searchtype, String keyword, int limit, int offset) {
		 Map<String, Object> map = new HashMap<>();
		 map.put("searchtype", searchtype);
		 map.put("keyword", keyword);
		 map.put("limit", limit);
		 map.put("offset", offset);
 
	   return sqlSessionTemplate.selectList("edu.Bsearch", map);
	}
	
	// 필수정보만 보기 
	public List<Education_VO> getCSearch(String searchtype, String keyword, int limit, int offset) {
		 Map<String, Object> map = new HashMap<>();
		 map.put("searchtype", searchtype);
		 map.put("keyword", keyword);
		 map.put("limit", limit);
		 map.put("offset", offset);
 
	   return sqlSessionTemplate.selectList("edu.Csearch", map);
	}

}

