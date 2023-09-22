package com.oguogu.support.model.service;

import java.util.List;

import com.oguogu.support.model.vo.Support_VO;

public interface Support_Service {
	
	// 전체 게시물 수
	public int getTotalCount();
	
	// 페이징 처리를 위한 리스트
	public List<Support_VO> getList(int offset, int limit);
	
	//상세보기
	public Support_VO getOneList(String not_idx);
}
