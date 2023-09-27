package com.oguogu.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.education.model.vo.Education_VO;
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
	//좋아요 있는지 없는지 구하기(select count(*))
	@Override
	public int getMyEduFavHeart(String nickname) {
		return myPageDAO.getMyEduFavHeart(nickname);
	}
	
	@Override
	public List<Education_VO> getMyFavEdu(String nickname) {
		return myPageDAO.getMyFavEdu(nickname);
	}
	
	@Override
	public Education_VO getEduOnelist(String edu_idx) {
		return myPageDAO.getEduOnelist(edu_idx);
	}
	
}
