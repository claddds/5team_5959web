package com.oguogu.user.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.user.model.dao.User_DAO;
import com.oguogu.user.model.vo.User_VO;

@Service
public class User_serviceImpl implements User_service{
	@Autowired
	private User_DAO user_DAO;
	
	@Override
	public List<User_VO> getUserList(Map<String,Object> param) {
		return user_DAO.getUserList(param);
	}
	
	@Override
	public int getUserListCnt(Map<String,Object> param) {
		return user_DAO.getUserListCnt(param);
	}

	@Override
	public int setUserReport(Map<String,Object> param) {
		return user_DAO.setUserReport(param);
	}
	
	@Override
	public int setUserChangeManager(Map<String,Object> param) {
		return user_DAO.setUserChangeManager(param);
	}

	@Override
	public List<User_VO> getDelUserList(Map<String, Object> param) {
		return user_DAO.getDelUserList(param);
	}

	@Override
	public int getDelUserListCnt(Map<String, Object> param) {
		return user_DAO.getDelUserListCnt(param);
	}
	
	
}
