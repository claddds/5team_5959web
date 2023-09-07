package com.oguogu.ogudoctor.self.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OguSelfController {
	// 오구닥터 간단체크에서 증상을 선택하고 다음으로 버튼을 눌렀을때 다음페이지로 넘어가는 명령어(체크된값을 가지고 가야한다)
    @ResponseBody
    @RequestMapping("/ogunextbt.do")
    public ModelAndView getOguNextBt(@RequestParam(value = "selectedvalues[]") List<String> selectedvalues[],
    		HttpServletRequest request) {
        // 세션에 데이터를 저장
        HttpSession session = request.getSession();
        session.setAttribute("selectedvalues", selectedvalues);
        System.out.println(selectedvalues);
        ModelAndView mv = new ModelAndView("ogudoctor/self/symptom_select");
        mv.addObject("selectedvalues", selectedvalues);
        return mv;
    }
 // 페이지 이동
    @RequestMapping("/gosymsel.do")
    public ModelAndView getGoSymSel(HttpServletRequest request) {
        // 세션에서 데이터를 읽어옴
        HttpSession session = request.getSession();
        List<String> selectedvalues = (List<String>) session.getAttribute("selectedvalues");
        ModelAndView mv = new ModelAndView("ogudoctor/self/symptom_select");
        mv.addObject("selectedvalues", selectedvalues);
        return mv;
    }
    @RequestMapping("/gosym.do")
    public ModelAndView renderSymptomSelectPage() {
        ModelAndView mv = new ModelAndView("ogudoctor/self/symptom_select");
        // 필요한 데이터를 모델에 추가할 수 있음
        return mv;
    }
}
