package com.oguogu.ogudoctor.self.model.service;

import java.util.List;

import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;

public interface AdminOgu_Self_Service {
		
	// 전체 게시물의 수
	public int getTotalCount();
	
	// 리스트
	public List<Ogu_Self_VO> getList();
		
	// 페이징처리를 위한 리스트
	public List<Ogu_Self_VO> getList(int offset, int limit);
	
	
	// 질병 리스트 삽입
	int getDiseaseInsert(Ogu_Self_VO oguselfvo);
	
	// 질병 리스트 삭제
	int getDelete(String ogu_idx);
}
