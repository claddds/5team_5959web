package com.oguogu.report.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.report.model.vo.Report_VO;

@Repository
public class Report_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	// 전체 게시글 수
	public int getTotalCount() {
		return sqlSessionTemplate.selectOne("rep.count");
	}
		
	// 페이징 처리를 위한 리스트
	public List<Report_VO> getList(int offset, int limit){
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("limit", limit);
		map.put("offset", offset);
		return sqlSessionTemplate.selectList("rep.list",map);
	}	
	
	// 게시글 삽입
	public int getInsert(Report_VO rvo) {
		return sqlSessionTemplate.insert("rep.insert", rvo);
	}
	
	// 게시글 상세보기
	public Report_VO getOneList(String rep_idx) {
		return sqlSessionTemplate.selectOne("rep.onelist", rep_idx);
	}
}
