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
	
	//id로 비밀번호 찾아옴 로그인에 활용
	@Override
	public String getMemberPwd(String user_id) {
		return join_DAO.getMemberPwd(user_id);
	}
	
	//카카오에서 활용함 id 하나로 onelist
	@Override
	public User_VO getUserOneList(String user_id) {
		return join_DAO.getUserOneList(user_id);
	}
	
	 //이메일로 아이디 찾기 위함
	 @Override 
	 public User_VO getFindId(String email) { 
		 return join_DAO.getFindId(email); 
	}
	 
	
	//유저 비밀번호 업데이트
	@Override
	public int getPwUpdate(User_VO userVO) {
		return join_DAO.getPwUpdate(userVO);
	}

}
