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
	//아이디 중복 체크
	public int userEmailChk(User_VO userVO) {
		return sqlSessionTemplate.selectOne("join.userEmailChk", userVO);
	}
}
