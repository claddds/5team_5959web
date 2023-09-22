package com.oguogu.faq.model.service;

import java.util.List;

import com.oguogu.faq.model.vo.FAQ_VO;

public interface FAQ_Service {
	// 전체 게시물의 수
	public int getTotalCount();
	
	// 페이징 처리를 위한 리스트
	public List<FAQ_VO> getList(int offset, int limit);	
	
	// 상세보기
	public FAQ_VO getOneList(String faq_idx);

}
