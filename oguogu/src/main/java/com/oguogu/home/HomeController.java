package com.oguogu.home;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.user.model.service.Join_Service;
import com.oguogu.user.model.vo.User_VO;


@Controller
public class HomeController {
	
	@Autowired
	Join_Service join_Service;
	
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
	public ModelAndView getMypageDisplay(HttpSession session) {
		ModelAndView mv = new ModelAndView("mypage/mypage_myprofile_onelist");
		String user_id = (String) session.getAttribute("user_id");
		User_VO userVO = join_Service.getUserOneList(user_id);
		mv.addObject("userVO", userVO);
		return mv;
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
//	// 상단 메뉴바에서 고객지원을 누르면 공지사항 화면으로 이동
//	@GetMapping("/supdisplay.do")
//	public ModelAndView getSupDisplay() {
//		return new ModelAndView("support/sup_list");
//	}
//	// 상단 메뉴바에서 문의사항을 누르면 문의사항 화면으로 이동
//	@GetMapping("/faqdisplay.do")
//	public ModelAndView getFaqDisplay() {
//		return new ModelAndView("faq/faq_list");
//	}
	// 상단 메뉴바에서 1:1문의를 누르면 1:1문의사항 화면으로 이동
	@GetMapping("/qnadisplay.do")
	public ModelAndView getQnaDisplay() {
		return new ModelAndView("qna/qna_list");
	}
	// 상단 메뉴바에서 신고를 누르면 신고 화면으로 이동
	@GetMapping("/repdisplay.do")
	public ModelAndView getRepDisplay() {
		return new ModelAndView("rep/rep_list");
	}	
	// 관리자화면으로 로그인시 상단에 관리자페이지 화면으로 이동
		@GetMapping("/adminuserdisplay.do")
		public ModelAndView getAdminUserDisplay() {
			return new ModelAndView("admin/user/admin_user");
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
