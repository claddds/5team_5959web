package com.oguogu.education.model.service;

import java.util.List;

import com.oguogu.education.model.vo.Education_VO;

public interface Edu_Service {

	// 리스트
	public List<Education_VO> getEdu_List();

	// 삽입
	public int getEdudInsert(Education_VO evo);

	// 전체 게시물의 수
	public int getTotalCount();

	// 페이징처리를 위한 리스트
//	public List<Education_VO> getEdu_List(int offset, int limit);
}
