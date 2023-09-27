package com.oguogu.mypage.model.service;

import java.util.List;

import com.oguogu.education.model.vo.Education_VO;
import com.oguogu.user.model.vo.User_VO;

public interface MyPageService {
	
	//회원정보 수정
	public int getUpdateMyInfo(User_VO uvo);
	//비밀번호 변경
	public int getPwUpdate(String user_id, String pw);
	//회원 탈퇴
	public int getRemoveUser(String user_id);
	//좋아요 있는지 없는지 구하기
	public int getMyEduFavHeart(String nickname);
	
	public List<Education_VO> getMyFavEdu(String nickname);
	
	public Education_VO getEduOnelist(String edu_idx);
}
