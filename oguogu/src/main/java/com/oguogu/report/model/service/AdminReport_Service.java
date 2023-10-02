package com.oguogu.report.model.service;

import java.util.List;
import java.util.Map;

import com.oguogu.report.model.vo.Report_VO;

public interface AdminReport_Service {
	// 신고 리스트
	public List<Report_VO> getReportList(Map<String,Object> param);
	// 페이징 처리를 위한 리스트
	public int getReportListCnt(Map<String, Object> param);
	
	// 신고 상세페이지
	public List<Report_VO> getReportOneList(Map<String, Object> param);
	public int setRepIng(Map<String, Object> param);
}
