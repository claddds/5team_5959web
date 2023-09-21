package com.oguogu.user.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.user.model.vo.User_VO;

@Repository
public class User_DAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	// 회원 리스트
	public List<User_VO> getUserList(Map<String,Object> param) {
		return sqlSessionTemplate.selectList("oguogu.userlist", param) ;
	}

	public int getUserListCnt(Map<String, Object> param) {
		return sqlSessionTemplate.selectOne("oguogu.userlistCnt", param) ;
	}
	// 신고회원
	public int setUserReport(Map<String, Object> param) {
		return sqlSessionTemplate.update("oguogu.setUserReport", param);
	}
	// 관리자 전환
	public int setUserChangeManager(Map<String, Object> param) {
		return sqlSessionTemplate.update("oguogu.setUserChangeManager", param);
	}
	// 탈퇴회원 리스트
	public List<User_VO> getDelUserList(Map<String,Object> param) {
		return sqlSessionTemplate.selectList("oguogu.deluserlist", param) ;
	}

	public int getDelUserListCnt(Map<String, Object> param) {
		return sqlSessionTemplate.selectOne("oguogu.deluserlistCnt", param) ;
	}
}
