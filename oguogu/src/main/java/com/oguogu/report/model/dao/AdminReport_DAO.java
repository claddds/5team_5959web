package com.oguogu.report.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.report.model.vo.Report_VO;

@Repository
public class AdminReport_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	// 신고 리스트
	public List<Report_VO> getReportList(Map<String, Object> param) {
		return sqlSessionTemplate.selectList("oguogu.reportlist", param) ;
	}
	public int getReportListCnt(Map<String, Object> param) {
		return sqlSessionTemplate.selectOne("oguogu.reportlistCnt", param) ;
	}
	
	// 상세 페이지
	public List<Report_VO> getReportOneList(Map<String, Object> param) {
		return sqlSessionTemplate.selectList("oguogu.report_onelist", param) ;
	}
	public int setRepIng(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("oguogu.setRepIng", param) ;
	}
}
