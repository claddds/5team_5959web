package com.oguogu.faq.model.service;

import java.util.List;

import com.oguogu.faq.model.vo.FAQ_VO;

public interface Ad_Faq_Service {
	
	
	// 전체 게시물의 수
	int getTotalCount();
	int getSearchTotalCount(String searchtype, String keyword);
	// 리스트
	List<FAQ_VO> getAd_Faq_List(int offset, int limit);	

	// 삽입
	int getFaqInsert(FAQ_VO faq_vo);
	// 상세보기
	public FAQ_VO getFaqAdminOneList(String faq_idx);
	// 수정
	int getFaq_Update(FAQ_VO faq_vo);
	
	int getFaq_Delete(FAQ_VO faq_vo);
	
	public List<FAQ_VO> getSearch(String searchtype, String keyword,int offset, int limit);	
}
