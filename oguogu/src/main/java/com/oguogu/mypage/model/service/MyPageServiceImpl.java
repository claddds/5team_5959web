package com.oguogu.mypage.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.mypage.model.dao.MyPageDAO;
import com.oguogu.user.model.vo.User_VO;

@Service
public class MyPageServiceImpl implements MyPageService{
	
	@Autowired
	MyPageDAO myPageDAO;
	
	@Override
	public int getUpdateMyInfo(User_VO uvo) {
		return myPageDAO.getUpdateMyInfo(uvo);
	}
}
