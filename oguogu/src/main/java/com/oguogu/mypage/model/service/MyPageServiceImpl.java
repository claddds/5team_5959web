package com.oguogu.mypage.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.education.model.vo.Education_VO;
import com.oguogu.lounge.model.vo.Lounge_VO;
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
	//좋아요(즐겨찾기) 여부 확인(select count(*))
	@Override
	public int getMyEduFavHeart(String nickname) {
		return myPageDAO.getMyEduFavHeart(nickname);
	}
	//좋아요 한 목록 불러오기
	@Override
	public List<Education_VO> getMyFavEdu(String nickname) {
		return myPageDAO.getMyFavEdu(nickname);
	}
	//글 작성 여부 확인
	@Override
	public int getmyWriteFind(String user_id) {
		return myPageDAO.getmyWriteFind(user_id);
	}

	//글 목록 불러오기
	@Override
	public List<Lounge_VO> getmyWriteLounge(String user_id,int offset, int limit) {
		return myPageDAO.getmyWriteLounge(user_id,offset,limit);
	}
	//게시물 댓글 갯수 구하기
	@Override
	public int getCommentCount(String lo_idx) {
		return myPageDAO.getCommentCount(lo_idx);
	}
	//내가 쓴 댓글 갯수 구하기
	@Override
	public int getmyCommFind(String user_id) {
		return myPageDAO.getmyCommFind(user_id);
	}
	
	//내가 쓴 댓글 갯수 구하기
	@Override
	public List<Lounge_VO> getmyComment(String user_id, int offset, int limit) {
		return myPageDAO.getmyComment(user_id,offset,limit);
	}
	
}
