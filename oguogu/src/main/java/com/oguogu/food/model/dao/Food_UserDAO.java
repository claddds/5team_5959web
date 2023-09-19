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
	
	public List<Education_VO> getDogFoodlist() {
		return sqlSessionTemplate.selectList("foodUser.getDogFoodlist");
	}
	
	
}
