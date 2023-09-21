package com.oguogu.user.model.service;

import java.util.List;
import java.util.Map;

import com.oguogu.user.model.vo.User_VO;

public interface User_service {
	// 페이징 처리를 위한 리스트
	// 회원 정보 리스트
	public List<User_VO> getUserList(Map<String,Object> param);
	public int getUserListCnt(Map<String, Object> param);
	// 신고회원 
	public int setUserReport(Map<String, Object> param);
	// 관리자 전환
	public int setUserChangeManager(Map<String, Object> param);
	
	// 탈퇴회원 리스트
	public List<User_VO> getDelUserList(Map<String,Object> param);
	public int getDelUserListCnt(Map<String, Object> param);
}
