package com.oguogu.mypage.model.service;

import java.util.List;

import com.oguogu.education.model.vo.Education_VO;
import com.oguogu.lounge.model.vo.Lounge_VO;
import com.oguogu.user.model.vo.User_VO;

public interface MyPageService {
	
	//회원정보 수정
	public int getUpdateMyInfo(User_VO uvo);
	//비밀번호 변경
	public int getPwUpdate(String user_id, String pw);
	//회원 탈퇴
	public int getRemoveUser(String user_id);
	//좋아요(즐겨찾기) 여부 확인
	public int getMyEduFavHeart(String nickname);
	//좋아요 한 목록 불러오기
	public List<Education_VO> getMyFavEdu(String nickname);
	//글 작성 여부 확인
	public int getmyWriteFind(String user_id);
	//글 목록 불러오기
	public List<Lounge_VO> getmyWriteLounge(String user_id,int offset, int limit);
	//댓글 갯수 카운트
	public int getCommentCount(String lo_idx);
	//댓글 user_id로 카운트
	public int getmyCommFind(String user_id);
	//댓글 목록 불러오기
	public List<Lounge_VO> getmyComment(String user_id,int offset, int limit);

}
