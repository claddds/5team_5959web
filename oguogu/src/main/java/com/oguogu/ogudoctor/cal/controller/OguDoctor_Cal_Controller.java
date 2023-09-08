package com.oguogu.ogudoctor.cal.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OguDoctor_Cal_Controller {
    @RequestMapping(value="/ogudoctor.do")
    public String ogudoctor(HttpServletRequest request){
    	System.out.println("페이지 이동 요청");
		return "ogudoctor/cal/ogu_cal";
    }
    
    @RequestMapping(value="/food.do")
    public String food(HttpServletRequest request){
    	System.out.println("사료칼로리 페이지 이동 요청");
		return "ogudoctor/cal/food-calorie";
    }
    
    @RequestMapping(value="/foodCalorieResult.do")
    public String foodCalorieResult(HttpServletRequest request){
    	System.out.println("사료칼로리 결과 요청");
		return "ogudoctor/cal/food-calorie_result";
    }
    
    @RequestMapping(value="/recommend.do")
    public String recommend(HttpServletRequest request){
    	System.out.println("권장칼로리 페이지 이동 요청");
		return "ogudoctor/cal/recommend-calorie";
    }
    
    @RequestMapping(value="/recommend_res.do")
    public String recommend_res(HttpServletRequest request){
    	System.out.println("권장칼로리 결과 페이지 이동 요청");
		return "ogudoctor/cal/recommend-calorie_result";
    }
    
    @RequestMapping(value="/bmi.do")
    public String bmi(HttpServletRequest request){
    	System.out.println("비만도 페이지 이동 요청");
		return "ogudoctor/cal/bmi";
    }
    
    @RequestMapping(value="/bmi_result.do")
    public String bmi_result(HttpServletRequest request){
    	System.out.println("비만도 페이지 결과 이동 요청");
		return "ogudoctor/cal/bmi_result";
    }
    
    @RequestMapping(value="/age.do")
    public String age(HttpServletRequest request){
    	System.out.println("나이 페이지 이동 요청");
		return "ogudoctor/cal/age";
    }
    
    @RequestMapping(value="/age_result.do")
    public String age_result(HttpServletRequest request){
    	System.out.println("나이 페이지 이동 요청");
		return "ogudoctor/cal/age_result";
    }
    
  
}
