package com.oguogu.user.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.user.model.dao.Join_DAO;
import com.oguogu.user.model.vo.User_VO;

@Service
public class Join_ServiceImpl implements Join_Service {
	
	@Autowired
	private Join_DAO join_DAO;
	
	@Override
	public int userNickNameChk(User_VO userVO) {
		return join_DAO.userNickNameChk(userVO);
	}
	
	@Override
	public int userIdChk(User_VO userVO) {
		return join_DAO.userIdChk(userVO);
	}
	
	@Override
	public int userEmailChk(User_VO userVO) {
		return join_DAO.userEmailChk(userVO);
	}
	
	@Override
	public int getUserAdd(User_VO userVO) {
		return join_DAO.getUserAdd(userVO);
	}
	
	@Override
	public String getMemberPwd(String user_id) {
		return join_DAO.getMemberPwd(user_id);
	}
}
