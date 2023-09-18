package com.oguogu.user.model.service;


import com.oguogu.user.model.vo.User_VO;

public interface Join_Service {

	// 닉네임 중복체크
	public int userNickNameChk(User_VO userVO);

	// 아이디 중복 체크
	public int userIdChk(User_VO userVO);

	// 이메일 중복 체크
	public int userEmailChk(User_VO userVO);

	// 회원 가입
	public int getUserAdd(User_VO userVO);

	// id로 패스워드 검사
	public String getMemberPwd(String user_id);

	// 카카오 및 joincontroller에서 활용함 / 유저 아이디 찾기
	public User_VO getUserOneList(String user_id);
	
	//이메일로 유저 아이디 찾기 
	public User_VO getFindId(String email);
	 
	// 유저 비밀번호 업데이트
	public int getPwUpdate(User_VO userVO);

}
