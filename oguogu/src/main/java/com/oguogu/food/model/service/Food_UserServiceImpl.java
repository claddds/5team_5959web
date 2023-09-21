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
	
	//강아지
	
	//사료 - 전연령 리스트
	@Override
	public List<Education_VO> getDogFoodlist() {
		return food_UserDAO.getDogFoodlist();
	}
	//사료 - 퍼피 리스트
	@Override
	public List<Education_VO> getDogFoodPuppy() {
		return food_UserDAO.getDogFoodPuppy();
	}
	//사료 - 어덜트 리스트
	@Override
	public List<Education_VO> getDogFoodAdult() {
		return food_UserDAO.getDogFoodAdult();
	}
	//사료 - 시니어 리스트
	@Override
	public List<Education_VO> getDogFoodSenior() {
		return food_UserDAO.getDogFoodSenior();
	}
	@Override
	public List<Education_VO> getDogDesert() {
		return food_UserDAO.getDogDesert();
	}
	@Override
	public List<Education_VO> getDogSupplies() {
		return food_UserDAO.getDogSupplies();
	}

	
	//고양이
	
	@Override
	public List<Education_VO> getCatFoodlist() {
		return food_UserDAO.getCatFoodlist();
	}
	@Override
	public List<Education_VO> getCatFoodKitten() {
		return food_UserDAO.getCatFoodKitten();
	}
	@Override
	public List<Education_VO> getCatFoodAdult() {
		return food_UserDAO.getCatFoodAdult();
	}
	@Override
	public List<Education_VO> getCatFoodSenior() {
		return food_UserDAO.getCatFoodSenior();
	}
	@Override
	public List<Education_VO> getCatDesert() {
		return food_UserDAO.getCatDesert();
	}
	@Override
	public List<Education_VO> getCatSupplies() {
		return food_UserDAO.getCatSupplies();
	}
	
	
}
