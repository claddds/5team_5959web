package com.oguogu.education.model.service;

import java.util.List;

import com.oguogu.education.model.vo.EduHeart_VO;
import com.oguogu.education.model.vo.Education_VO;

public interface EduT_UserService {
	//양육 정보
			public List<Education_VO> getDogTlist(int offset, int limit); //doglist만 구하기
			public List<Education_VO> getCatTlist(int offset, int limit); //catlist만 구하기
			
			public int getDogListTCount(); //양육정보 강아지 리스트 페이지
			public int getCatListTCount(); //양육정보 고양이 리스트 페이지
			
			public EduHeart_VO getTHeartOnelist(EduHeart_VO ehVo);//하트 테이블 가서 정보 조회
			public int getTHitUpdate(String edu_idx); // 조회수 1 증가
			public Education_VO getTDogOneList(String edu_idx); //필수 정보 상세보기
			
			public int getTHeartInsert(EduHeart_VO ehVo);
			public int getTHeartDelete(EduHeart_VO ehVo);
			
			public int getTHeartCount(String edu_idx);
}
