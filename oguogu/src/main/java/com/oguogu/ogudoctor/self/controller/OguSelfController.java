package com.oguogu.ogudoctor.self.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.ogudoctor.self.model.service.Ogu_Self_Service;
import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;

@Controller
public class OguSelfController {
	@Autowired
	private Ogu_Self_Service ogu_Self_Service;
	
    // 페이지 이동
    @RequestMapping("/gosym.do")
    public ModelAndView renderSymptomSelectPage() {
        ModelAndView mv = new ModelAndView("ogudoctor/self/symptom_select");
        // 필요한 데이터를 모델에 추가할 수 있음
        return mv;
    }
    
    @GetMapping("/dog_meal_list.do")
    public ModelAndView getDogmealfoodlist() {
    	ModelAndView mv = new ModelAndView("ogudoctor/self/category_symptom/dog/meal");
		List<Ogu_Self_VO> mealfoodlist = ogu_Self_Service.getDogmealfoodlist();
		mv.addObject("mealfoodlist", mealfoodlist);
		List<Ogu_Self_VO> mealwaterlist = ogu_Self_Service.getDogmealwaterlist();
		mv.addObject("mealwaterlist", mealwaterlist);
		return mv;
    }
    
    @RequestMapping("/goresult.do")
    public ModelAndView getGoResult() {
        ModelAndView mv = new ModelAndView("ogudoctor/self/ogu_self_result");
        // 필요한 데이터를 모델에 추가할 수 있음
        
        return mv;
    }
}