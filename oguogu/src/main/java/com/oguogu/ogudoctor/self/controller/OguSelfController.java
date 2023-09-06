package com.oguogu.ogudoctor.self.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OguSelfController {
	/*
	// 오구닥터 페이지로 이동
	//오구닥터 간단체크에서 증상을 선택하고 다음으로 버튼을 눌렀을때 다음페이지로 넘어가는 명령어(체크된값을 가지고 가야한다)
	@RequestMapping(value = "/oguselfnextbt.do", method = RequestMethod.POST)
	public ModelAndView getOguSelfNextBt(@RequestParam(value = "selectedvalues[]") String[] selectedvalues, Model model) {
	    // 선택된 값들을 모델에 추가하여 뷰로 전달
		ModelAndView mv = new ModelAndView("ogudoctor/self/ogu_self_symptom_select");
	    model.addAttribute("selectedvalues", selectedvalues);
	    
	    // 다른 로직을 수행하거나 다른 JSP 페이지로 값을 전달할 수 있습니다.
	    return mv; // 결과 페이지로 리다이렉트
	}
	*/
	@RequestMapping(value = "/oguselfnextbt.do")
	public ModelAndView getOguSelfNextBt(@RequestParam(value = "selectedvalues[]") String[] selectedvalues, Model model) {
	    // 선택된 값들을 모델에 추가하여 뷰로 전달
		ModelAndView mv = new ModelAndView("ogudoctor/self/ogu_self_symptom_select");
	    
	    // 다른 로직을 수행하거나 다른 JSP 페이지로 값을 전달할 수 있습니다.
	    return mv; // 결과 페이지로 리다이렉트
	}
}
