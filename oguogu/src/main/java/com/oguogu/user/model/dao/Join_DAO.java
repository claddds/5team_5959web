package com.oguogu.user.model.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.user.model.vo.User_VO;

@Repository
public class Join_DAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//닉네임 중복 체크
	public int userNickNameChk(User_VO userVO) {
		return sqlSessionTemplate.selectOne("join.userNickNameChk", userVO);
	}
	//아이디 중복 체크
	public int userIdChk(User_VO userVO) {
		return sqlSessionTemplate.selectOne("join.userIdChk", userVO);
	}
	//이메일 중복 체크
	public int userEmailChk(User_VO userVO) {
		return sqlSessionTemplate.selectOne("join.userEmailChk", userVO);
	}
	//회원 가입
	public int getUserAdd(User_VO userVO) {
		return sqlSessionTemplate.insert("join.userAdd",userVO);
	}
	
	public String getMemberPwd(String user_id) {
		return sqlSessionTemplate.selectOne("join.findPw",user_id);
	}
	
	public User_VO getUserOneList(String user_id) {
		return sqlSessionTemplate.selectOne("join.findUser",user_id);
	}
	
	//아이디, 비밀번호 찾기 - 아이디 찾기 할 때 씀
	public User_VO getFindId(String email) {
		return sqlSessionTemplate.selectOne("join.findUserId",email);
	}
	
	//아이디, 비밀번호 찾기 - 랜덤 넘버로 비밀번호 업데이트(재설정)
	public int getPwUpdate(User_VO userVO) {
		return sqlSessionTemplate.update("join.userPwUpdate",userVO);
	}
}
