package com.oguogu.food.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oguogu.education.model.vo.Education_VO;

@Repository
public class Food_UserDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//강아지
	
	//사료 - 전연령 리스트
	public List<Education_VO> getDogFoodlist() {
		return sqlSessionTemplate.selectList("foodUser.getDogFoodlist");
	}
	//사료 - 퍼피 리스트
	public List<Education_VO> getDogFoodPuppy() {
		return sqlSessionTemplate.selectList("foodUser.getDogFoodPuppy");
	}
	//사료 - 어덜트 리스트
	public List<Education_VO> getDogFoodAdult() {
		return sqlSessionTemplate.selectList("foodUser.getDogFoodAdult");
	}
	//사료 - 시니어 리스트
	public List<Education_VO> getDogFoodSenior() {
		return sqlSessionTemplate.selectList("foodUser.getDogFoodSenior");
	}
	
	public List<Education_VO> getDogDesert() {
		return sqlSessionTemplate.selectList("foodUser.getDogDesert");
	}
	public List<Education_VO> getDogSupplies() {
		return sqlSessionTemplate.selectList("foodUser.getDogSupplies");
	}
	
	//고양이
	
	public List<Education_VO> getCatFoodlist() {
		return sqlSessionTemplate.selectList("foodUser.getCatFoodlist");
	}
	public List<Education_VO> getCatFoodKitten() {
		return sqlSessionTemplate.selectList("foodUser.getCatFoodKitten");
	}
	public List<Education_VO> getCatFoodAdult() {
		return sqlSessionTemplate.selectList("foodUser.getCatFoodAdult");
	}
	public List<Education_VO> getCatFoodSenior() {
		return sqlSessionTemplate.selectList("foodUser.getCatFoodSenior");
	}
	public List<Education_VO> getCatDesert() {
		return sqlSessionTemplate.selectList("foodUser.getCatDesert");
	}
	public List<Education_VO> getCatSupplies() {
		return sqlSessionTemplate.selectList("foodUser.getCatSupplies");
	}
}
