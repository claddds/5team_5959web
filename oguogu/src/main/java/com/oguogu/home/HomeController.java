package com.oguogu.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	// =====home_top.jsp 시작========
	// 메인로고를 누르면 메인홈화면으로 이동
	@GetMapping("/homedisplay.do")
	public ModelAndView getHomeDisplay() {
		return new ModelAndView("index");
	}
	// 상단 메뉴바에서 플레이스를 누르면 플레이스 화면으로 이동
	@GetMapping("/placemaindisplay.do")
	public ModelAndView getPlaceMainDisplay() {
		return new ModelAndView("place/place_main");
	}
	// 상단 메뉴바에서 오구닥터를 누르면 플레이스 화면으로 이동
	@GetMapping("/ogudoctormaindisplay.do")
	public ModelAndView getOguDoctorMainDisplay() {
		return new ModelAndView("ogudoctor/ogu_main");
	}
	//=====home_top.jsp 끝========
	// =====ogu_main.jsp(오구닥터메인화면에서 해당 기능으로 이동) 시작========
	// 
	@GetMapping("/ogu_dog_categorydisplay.do")
	public ModelAndView getOguDoctorDogCategory() {
		return new ModelAndView("ogudoctor/self/ogu_dog_category");
	}
	//
	@GetMapping("/ogu_cat_categorydisplay.do")
	public ModelAndView getOguDoctorCatCategory() {
		return new ModelAndView("ogudoctor/self/ogu_cat_category");
	}
	//=====ogu_main.jsp 끝========
}
