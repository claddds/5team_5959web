package com.oguogu.mypage.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.user.model.vo.User_VO;

@Repository
public class MyPageDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//회원정보 수정
	public int getUpdateMyInfo(User_VO uvo) {
		return sqlSessionTemplate.update("mypage.getUpdateMyInfo", uvo);
	}
	//비밀번호 변경
	public int getPwUpdate(String user_id, String pw) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("pw", pw);
		map.put("user_id", user_id);
		
		return sqlSessionTemplate.update("mypage.getPwUpdate",map);
	}
	//회원 탈퇴
	public int getRemoveUser(String user_id) {
		return sqlSessionTemplate.update("mypage.getRemoveUser",user_id);
	}
}
