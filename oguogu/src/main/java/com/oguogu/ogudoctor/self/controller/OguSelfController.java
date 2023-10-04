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
import com.oguogu.ogudoctor.self.model.service.Ogu_Sym_Service;
import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;
import com.oguogu.ogudoctor.self.model.vo.Ogu_Sym_VO;

@Controller
public class OguSelfController {
	@Autowired
	private Ogu_Sym_Service ogu_Sym_Service;
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
    public ModelAndView getGoResult(
    		@RequestParam(value = "option1", required = false) String option1Value,
            @RequestParam(value = "option2", required = false) String option2Value,
            @RequestParam(value = "option3", required = false) String option3Value,
            @RequestParam(value = "option4", required = false) String option4Value) {
        ModelAndView mv = new ModelAndView("ogudoctor/self/ogu_self_result");
        // 필요한 데이터를 모델에 추가할 수 있음
        // 데이터 분리 및 처리
        if (option1Value != null) {
            String[] option1Values = option1Value.split(",");
            String disInfoOption1 = option1Values[0];
            String periodLineOption1 = option1Values[1];
            System.out.println("Option1 - dis_info: " + disInfoOption1 + ", period_line: " + periodLineOption1);
            
            List<Ogu_Sym_VO> symlist1 = ogu_Sym_Service.getDiseaseName(disInfoOption1);
            mv.addObject("symlist1",symlist1);
        }

        if (option2Value != null) {
            String[] option2Values = option2Value.split(",");
            String disInfoOption2 = option2Values[0];
            String periodLineOption2 = option2Values[1];
            System.out.println("Option2 - dis_info: " + disInfoOption2 + ", period_line: " + periodLineOption2);
            
            List<Ogu_Sym_VO> symlist2 = ogu_Sym_Service.getDiseaseName(disInfoOption2);
            mv.addObject("symlist2",symlist2);
        }

        if (option3Value != null) {
            String[] option3Values = option3Value.split(",");
            String disInfoOption3 = option3Values[0];
            String periodLineOption3 = option3Values[1];
            System.out.println("Option3 - dis_info: " + disInfoOption3 + ", period_line: " + periodLineOption3);
            
            List<Ogu_Sym_VO> symlist3 = ogu_Sym_Service.getDiseaseName(disInfoOption3);
            mv.addObject("symlist3",symlist3);
        }

        if (option4Value != null) {
            String[] option4Values = option4Value.split(",");
            String disInfoOption4 = option4Values[0];
            String periodLineOption4 = option4Values[1];
            System.out.println("Option4 - dis_info: " + disInfoOption4 + ", period_line: " + periodLineOption4);
            
            List<Ogu_Sym_VO> symlist4 = ogu_Sym_Service.getDiseaseName(disInfoOption4);
            mv.addObject("symlist4",symlist4);
        }
        
        return mv;
    }

}
