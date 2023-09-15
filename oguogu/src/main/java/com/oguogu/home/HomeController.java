package com.oguogu.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
	
	// =====home_top.jsp 시작========
	// 메인로고를 누르면 메인홈화면으로 이동
	@GetMapping("/homedisplay.do")
	public ModelAndView getHomeDisplay() {
		return new ModelAndView("index");
	}
	// 상단 메뉴에서 로그인을 누르면 로그인 페이지로 이동
	@GetMapping("/logindisplay.do")
	public ModelAndView getLoginDisplay() {
		return new ModelAndView("home/login");
	}
	// 상단 메뉴에서 회원가입을 누르면 회원가입 페이지로 이동
	@GetMapping("/joindisplay.do")
	public ModelAndView getJoinDisplay() {
		return new ModelAndView("home/join");
	}
	@GetMapping("/mypagedisplay.do")
	public ModelAndView getMypageDisplay() {
		return new ModelAndView("mypage/mypage_myprofile_onelist");
	}
	// 상단 메뉴에서 교육정보를 누르면 전체 교육정보 페이지로 이동
	@GetMapping("/alledudisplay.do")
	public ModelAndView getAllEduDisplay() {
		return new ModelAndView("education/edu_list");
	}
	// 상단 메뉴에서 필수정보를 누르면 필수정보 페이지로 이동
	@GetMapping("/essentialdisplay.do")
	public ModelAndView getEssentialDisplay() {
		return new ModelAndView("education/edu_essential_list");
	}
	// 상단 메뉴에서 양육정보를 누르면 양육정보 페이지로 이동
	@GetMapping("/bringingdisplay.do")
	public ModelAndView getBringingDisplay() {
		return new ModelAndView("education/edu_bringing_list");
	}
	// 상단 메뉴에서 훈련정보를 누르면 훈련정보 페이지로 이동
	@GetMapping("/trainingdisplay.do")
	public ModelAndView getTrainingDisplay() {
		return new ModelAndView("education/edu_training_list");
	}
	// 상단 메뉴바에서 플레이스를 누르면 플레이스 화면으로 이동
	@GetMapping("/placemaindisplay.do")
	public ModelAndView getPlaceMainDisplay() {
		return new ModelAndView("place/place_main");
	}
	// 상단 메뉴바에서 모두의 포켓를 누르면 모두의 포켓 화면으로 이동
	@GetMapping("/pocketmaindisplay.do")
	public ModelAndView getPocketMainDisplay() {
		return new ModelAndView("pocket/pocket_main");
	}
	// 상단 메뉴바에서 라운지를 누르면 라운지 전체글보기 화면으로 이동
	@GetMapping("/loungemaindisplay.do")
	public ModelAndView getLoungeMainDisplay() {
		return new ModelAndView("lounge/lounge_list");
	}
	// 상단 메뉴바에서 라운지 중 일상공유를 누르면 일상공유 화면으로 이동
	@GetMapping("/loungesharedisplay.do")
	public ModelAndView getLoungeShareDisplay() {
		return new ModelAndView("lounge/lounge_share_list");
	}
	// 상단 메뉴바에서 라운지 중 추천탭를 누르면 라운지 추천탭 화면으로 이동
	@GetMapping("/loungerecommdisplay.do")
	public ModelAndView getLoungeRecommDisplay() {
		return new ModelAndView("lounge/lounge_recomm_list");
	}
	// 상단 메뉴바에서 라운지 중 질문를 누르면 질문글보기 화면으로 이동
	@GetMapping("/loungeqnadisplay.do")
	public ModelAndView getLoungeQnaDisplay() {
		return new ModelAndView("lounge/lounge_qna_list");
	}
	
	// 상단 메뉴바에서 먹거리를 누르면 먹거리(기본 강아지) 화면으로 이동
	@GetMapping("/dogfooddisplay.do")
	public ModelAndView getDogFoodDisplay() {
		return new ModelAndView("food/dog_food_list");
	}
	// 상단 메뉴바에서 고양이 먹거리를 누르면 고양이 먹거리 화면으로 이동
	@GetMapping("/catfooddisplay.do")
	public ModelAndView getCatFoodDisplay() {
		return new ModelAndView("food/cat_food_list");
	}
	// 상단 메뉴바에서 오구닥터를 누르면 오구닥터 메인 화면으로 이동
	@GetMapping("/ogudoctormaindisplay.do")
	public ModelAndView getOguDoctorMainDisplay() {
		return new ModelAndView("ogudoctor/ogu_main");
	}
	// 상단 메뉴바에서 오구닥터 건강계산기를 누르면 건강계산기 화면으로 이동
	@GetMapping("/ogudoctorcaldisplay.do")
	public ModelAndView getOguDoctorCalDisplay() {
		return new ModelAndView("ogudoctor/cal/ogu_cal");
	}
	// 상단 메뉴바에서 고객지원을 누르면 공지사항 화면으로 이동
	@GetMapping("/supdisplay.do")
	public ModelAndView getSupDisplay() {
		return new ModelAndView("support/sup_list");
	}
	// 상단 메뉴바에서 문의사항을 누르면 문의사항 화면으로 이동
	@GetMapping("/faqdisplay.do")
	public ModelAndView getFaqDisplay() {
		return new ModelAndView("faq/faq_list");
	}
	// 상단 메뉴바에서 신고를 누르면 신고 화면으로 이동
	@GetMapping("/repdisplay.do")
	public ModelAndView getRepDisplay() {
		return new ModelAndView("rep/rep_list");
	}
		
	
	//=====home_top.jsp 끝========
	// =====ogu_main.jsp(오구닥터메인화면에서 해당 기능으로 이동) 시작========
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
