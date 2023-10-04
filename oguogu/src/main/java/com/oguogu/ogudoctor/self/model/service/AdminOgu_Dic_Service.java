package com.oguogu.ogudoctor.self.model.service;

import java.util.List;

import com.oguogu.ogudoctor.self.model.vo.Admin_OguDictionary_VO;

public interface AdminOgu_Dic_Service {
		
	// 전체 게시물의 수
	public int getTotalCount();
	
	// 리스트
	public List<Admin_OguDictionary_VO> getList();
		
	// 페이징처리를 위한 리스트
	public List<Admin_OguDictionary_VO> getList(int offset, int limit);
	
	
	// 질병 리스트 삽입
	int getDiseaseInsert(Admin_OguDictionary_VO addicvo);
	
	// 질병 리스트 삭제
	int getDelete(String dictionary_idx);
}
