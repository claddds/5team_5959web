package com.oguogu.mypage.model.service;

import com.oguogu.user.model.vo.User_VO;

public interface MyPageService {
	
	//회원정보 수정
	public int getUpdateMyInfo(User_VO uvo);
	//비밀번호 변경
	public int getPwUpdate(String user_id, String pw);
	//회원 탈퇴
	public int getRemoveUser(String user_id);
}
