package com.oguogu.education.model.service;

import java.util.List;
import java.util.Map;

import com.oguogu.education.model.vo.Education_VO;

public interface Edu_Service {
	
	
	// 전체 게시물의 수
	int getTotalCount();
	int getSearchTotalCount(String searchtype, String keyword);
	int getA_TotalCount();
	int getB_TotalCount();
	int getC_TotalCount();
	
	
	// 리스트
	public List<Education_VO> getEdu_List(int offset, int limit);	
	
	public List<Education_VO> getSearch(String searchtype, String keyword,int offset, int limit );	
	public List<Education_VO> getASearch(String searchtype, String keyword,int offset, int limit );	
	public List<Education_VO> getBSearch(String searchtype, String keyword,int offset, int limit );	
	public List<Education_VO> getCSearch(String searchtype, String keyword,int offset, int limit );	
	// 필수정보 리스트
	public List<Education_VO> getEdu_Alist(int offset, int limit);
	// 양육정보 리스트
	public List<Education_VO> getEdu_Blist(int offset, int limit);
	// 훈련정보 리스트
	public List<Education_VO> getEdu_Clist(int offset, int limit);

	// 삽입
	int getEdudInsert(Education_VO evo);
	// 상세보기
	public Education_VO getEduAdminOneList(String edu_idx);
	// 수정
	int getEdu_Update(Education_VO evo);
	
	int getEdu_Delete(Education_VO evo);
	
}
