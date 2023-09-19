package com.oguogu.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.common.FoodPaging;
import com.oguogu.education.model.vo.Education_VO;
import com.oguogu.food.model.service.Food_UserService;

@Controller
public class Food_UserController {
	
	@Autowired
	private Food_UserService food_UserService;
	
	@Autowired
	private FoodPaging paging;
	
	// 상단 메뉴바에서 먹거리를 누르면 먹거리(기본 강아지) 화면으로 이동
	@GetMapping("/dogfooddisplay.do")
	public ModelAndView getDogFoodDisplay() {
		ModelAndView mv = new ModelAndView("food/dog_food_list");
		
		List<Education_VO> DogFoodlist = food_UserService.getDogFoodlist();
		mv.addObject("DogFoodlist", DogFoodlist);
		return mv;
	}
	
	// 상단 메뉴바에서 고양이 먹거리를 누르면 고양이 먹거리 화면으로 이동
	@GetMapping("/catfooddisplay.do")
	public ModelAndView getCatFoodDisplay() {
		
		
		return new ModelAndView("food/cat_food_list");
	}
	
}
