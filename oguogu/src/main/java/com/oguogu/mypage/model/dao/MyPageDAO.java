package com.oguogu.mypage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.user.model.vo.User_VO;

@Repository
public class MyPageDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int getUpdateMyInfo(User_VO uvo) {
		return sqlSessionTemplate.update("mypage.getUpdateMyInfo", uvo);
	}
	
}
