package com.oguogu.education.model.service;

import java.util.List;

import com.oguogu.education.model.vo.EduHeart_VO;
import com.oguogu.education.model.vo.Education_VO;

public interface Edu_UserService {
	
	//교육 정보 눌렀을 때 리스트 불러오기
	public List<Education_VO> getElist() throws Exception; //필수 정보
	public List<Education_VO> getBlist() throws Exception; //양육 정보
	public List<Education_VO> getTlist() throws Exception; //훈련 정보
	
	////////////////////////////////////////////////////////////////////
	//필수정보
	public List<Education_VO> getDogElist(int offset, int limit) throws Exception; //doglist만 구하기
	public List<Education_VO> getCatElist(int offset, int limit) throws Exception; //catlist만 구하기
	
	public int getDogListCount() throws Exception;//필수정보 강아지 리스트 페이지 
	public int getCatListCount() throws Exception;//필수정보 고양이 리스트 페이지 
	
	public EduHeart_VO getHeartOnelist(EduHeart_VO ehVo) throws Exception; //하트 테이블 가서 정보 조회
	public int getHitUpdate(String edu_idx) throws Exception; // 조회수 1 증가
	public Education_VO getDogOneList(String edu_idx) throws Exception; //필수 정보 상세보기
	//public Education_VO getCatOneList(String edu_idx); //필수 정보 상세보기
	
	public int getHeartInsert(EduHeart_VO ehVo) throws Exception;
	public int getHeartDelete(EduHeart_VO ehVo) throws Exception;
	
	public int getHeartCount(String edu_idx) throws Exception;
}
