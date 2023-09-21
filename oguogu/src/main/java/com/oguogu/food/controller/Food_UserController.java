package com.oguogu.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.common.FoodPaging;
import com.oguogu.education.model.vo.Education_VO;
import com.oguogu.food.model.service.Food_UserService;

@Controller
public class Food_UserController {
	
	@Autowired
	private Food_UserService food_UserService;
	
	
	// 상단 메뉴바에서 먹거리를 누르면 먹거리(기본 강아지) 화면으로 이동
	@GetMapping("/dogfooddisplay.do")
	public ModelAndView getDogFoodDisplay() {
		ModelAndView mv = new ModelAndView("food/dog_food_list");
		
		List<Education_VO> DogFoodlist = food_UserService.getDogFoodlist();
		mv.addObject("DogFoodlist", DogFoodlist);
		return mv;
	}
	
	@RequestMapping("/dogFoodPuppy.do")
	public ModelAndView getDogFoodPuppy() {
		ModelAndView mv = new ModelAndView("food/dog_puppy_list");
		
		List<Education_VO> DogFoodPuppylist = food_UserService.getDogFoodPuppy();
		mv.addObject("DogFoodPuppylist", DogFoodPuppylist);
		return mv;
	}
	
	@RequestMapping("/dogFoodAdult.do")
	public ModelAndView getDogFoodAdult() {
		ModelAndView mv = new ModelAndView("food/dog_adult_list");
		
		List<Education_VO> DogFoodAdultlist = food_UserService.getDogFoodAdult();
		mv.addObject("DogFoodAdultlist", DogFoodAdultlist);
		return mv;
	}
	
	@RequestMapping("/dogFoodSenior.do")
	public ModelAndView getDogFoodSenior() {
		ModelAndView mv = new ModelAndView("food/dog_senior_list");
		
		List<Education_VO> DogFoodSeniorlist = food_UserService.getDogFoodSenior();
		mv.addObject("DogFoodSeniorlist", DogFoodSeniorlist);
		return mv;
	}
	
	@RequestMapping("/dogFooddesert.do")
	public ModelAndView getDogDesert() {
		ModelAndView mv = new ModelAndView("food/dog_desert_list");
		
		List<Education_VO> DogDesertlist = food_UserService.getDogDesert();
		mv.addObject("DogDesertlist", DogDesertlist);
		return mv;
	}
	@RequestMapping("/dogFoodsupplies.do")
	public ModelAndView getDogSupplies() {
		ModelAndView mv = new ModelAndView("food/dog_supplies_list");
		
		List<Education_VO> DogSupplieslist = food_UserService.getDogSupplies();
		mv.addObject("DogSupplieslist", DogSupplieslist);
		return mv;
	}

	//================================== 고양이 ============================================
	
	// 상단 메뉴바에서 먹거리를 누르면 먹거리(기본 고양이) 화면으로 이동
		@GetMapping("/catfooddisplay.do")
		public ModelAndView getCatFoodDisplay() {
			ModelAndView mv = new ModelAndView("food/cat_food_list");
			
			List<Education_VO> CatFoodlist = food_UserService.getCatFoodlist();
			mv.addObject("CatFoodlist", CatFoodlist);
			return mv;
		}
		
		@RequestMapping("/catFoodKitten.do")
		public ModelAndView getCatFoodKitten() {
			ModelAndView mv = new ModelAndView("food/cat_kitten_list");
			
			List<Education_VO> CatFoodKittenlist = food_UserService.getCatFoodKitten();
			mv.addObject("CatFoodKittenlist", CatFoodKittenlist);
			return mv;
		}
		
		@RequestMapping("/catFoodAdult.do")
		public ModelAndView getCatFoodAdult() {
			ModelAndView mv = new ModelAndView("food/cat_adult_list");
			
			List<Education_VO> CatFoodAdultlist = food_UserService.getCatFoodAdult();
			mv.addObject("CatFoodAdultlist", CatFoodAdultlist);
			return mv;
		}
		
		@RequestMapping("/catFoodSenior.do")
		public ModelAndView getCatFoodSenior() {
			ModelAndView mv = new ModelAndView("food/cat_senior_list");
			
			List<Education_VO> CatFoodSeniorlist = food_UserService.getCatFoodSenior();
			mv.addObject("CatFoodSeniorlist", CatFoodSeniorlist);
			return mv;
		}
		
		@RequestMapping("/catFooddesert.do")
		public ModelAndView getCatDesert() {
			ModelAndView mv = new ModelAndView("food/cat_desert_list");
			
			List<Education_VO> CatDesertlist = food_UserService.getCatDesert();
			mv.addObject("CatDesertlist", CatDesertlist);
			return mv;
		}
		
		@RequestMapping("/catFoodsupplies.do")
		public ModelAndView getCatSupplies() {
			ModelAndView mv = new ModelAndView("food/cat_supplies_list");
			
			List<Education_VO> CatSupplieslist = food_UserService.getCatSupplies();
			mv.addObject("CatSupplieslist", CatSupplieslist);
			return mv;
		}
	
}
