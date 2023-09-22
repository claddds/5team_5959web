package com.oguogu.report.model.service;

import java.util.List;

import com.oguogu.report.model.vo.Report_VO;

public interface Report_Service {
	
	// 신고 게시글 삽입
	public int getInsert(Report_VO rvo);
	
	// 전체 게시물 수
	public int getTotalCount();
	
	// 페이징 처리를 위한 리스트
	public List<Report_VO> getList(int offset, int limit);
	
	// 상세보기
	public Report_VO getOneList(String not_idx);
	
	// 신고 게시판은 삭제, 수정 못하게 되어있음
}
