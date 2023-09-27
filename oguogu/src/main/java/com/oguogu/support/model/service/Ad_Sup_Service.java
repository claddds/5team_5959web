package com.oguogu.support.model.service;

import java.util.List;

import com.oguogu.food.model.vo.Food_VO;
import com.oguogu.support.model.vo.Support_VO;

public interface Ad_Sup_Service {
	
	
	// 전체 게시물의 수
	int getTotalCount();
	
	// 리스트
	List<Support_VO> getAd_Sup_List(int offset, int limit);	

	// 삽입
	int getSupInsert(Support_VO sup_vo);
	// 상세보기
	public Support_VO getSupAdminOneList(String not_idx);
	// 수정
	int getSup_Update(Support_VO sup_vo);
	
	int getSup_Delete(Support_VO sup_vo);
	
	int getSearchTotalCount(String searchtype, String keyword);
	
	public List<Support_VO> getSearch(String searchtype, String keyword,int offset, int limit);	
}
