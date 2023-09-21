package com.oguogu.food.model.service;

import java.util.List;

import com.oguogu.education.model.vo.Education_VO;

public interface Food_UserService {
	
	
	//강아지
	public List<Education_VO> getDogFoodlist(); //사료 - 전연령 리스트
	public List<Education_VO> getDogFoodPuppy(); //사료 - 퍼피 리스트
	public List<Education_VO> getDogFoodAdult(); //사료 - 어덜트 리스트
	public List<Education_VO> getDogFoodSenior(); //사료 - 시니어 리스트
	
	public List<Education_VO> getDogDesert(); // 강아지 간식 리스트
	public List<Education_VO> getDogSupplies(); // 강아지 용품 리스트
	
	//고양이
	public List<Education_VO> getCatFoodlist(); //사료 - 전연령 리스트
	public List<Education_VO> getCatFoodKitten(); //사료 - 키튼 리스트
	public List<Education_VO> getCatFoodAdult(); //사료 - 어덜트 리스트
	public List<Education_VO> getCatFoodSenior(); //사료 - 시니어 리스트
	
	public List<Education_VO> getCatDesert(); // 고양이 간식 리스트
	public List<Education_VO> getCatSupplies(); // 고양이 용품 리스트
	
	
}
