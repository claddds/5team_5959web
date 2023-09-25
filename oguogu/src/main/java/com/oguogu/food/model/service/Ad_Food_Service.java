package com.oguogu.food.model.service;

import java.util.List;

import com.oguogu.faq.model.vo.FAQ_VO;
import com.oguogu.food.model.vo.Food_VO;


public interface Ad_Food_Service {
	
	
	// 전체 게시물의 수
	int getTotalCount();
	
	// 리스트
	List<Food_VO> getAd_Food_List(int offset, int limit);	

	// 삽입
	int getFoodInsert(Food_VO ad_f_vo);
	// 상세보기
	public Food_VO getFoodAdminOneList(String fd_idx);
	// 수정
	int getFood_Update(Food_VO ad_f_vo);

	int getFood_Delete(Food_VO ad_f_vo);
	
	int getSearchTotalCount(String searchtype, String keyword);
	
	public List<Food_VO> getSearch(String searchtype, String keyword,int offset, int limit);	
}
