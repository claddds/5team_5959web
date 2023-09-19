package com.oguogu.food.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.education.model.vo.Education_VO;
import com.oguogu.food.model.dao.Food_UserDAO;

@Service
public class Food_UserServiceImpl implements Food_UserService{
	
	@Autowired
	private Food_UserDAO food_UserDAO;

	@Override
	public List<Education_VO> getDogFoodlist() {
		return food_UserDAO.getDogFoodlist();
	}
	
	
}
