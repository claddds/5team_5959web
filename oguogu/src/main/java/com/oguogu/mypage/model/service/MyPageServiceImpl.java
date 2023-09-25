package com.oguogu.mypage.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.mypage.model.dao.MyPageDAO;
import com.oguogu.user.model.vo.User_VO;

@Service
public class MyPageServiceImpl implements MyPageService{
	
	@Autowired
	MyPageDAO myPageDAO;
	
	//회원정보 수정
	@Override
	public int getUpdateMyInfo(User_VO uvo) {
		return myPageDAO.getUpdateMyInfo(uvo);
	}
	
	//비밀번호 변경
	@Override
	public int getPwUpdate(String user_id, String pw) {
		return myPageDAO.getPwUpdate(user_id,pw);
	}
	
	//회원 탈퇴
	@Override
	public int getRemoveUser(String user_id) {
		return myPageDAO.getRemoveUser(user_id);
	}
}
