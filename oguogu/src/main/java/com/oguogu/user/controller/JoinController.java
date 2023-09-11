package com.oguogu.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oguogu.user.model.service.Join_Service;
import com.oguogu.user.model.vo.User_VO;

@Controller
public class JoinController {

	@Autowired
	private Join_Service join_Service;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	// 닉네임 중복 체크
	@RequestMapping("/nicknameChk.do")
	@ResponseBody
	public int userNickNameChk(User_VO userVO) throws Exception {
		int result = join_Service.userNickNameChk(userVO);
		return result;
	};

	// 아이디 중복 체크
	@RequestMapping("/IdChk.do")
	@ResponseBody
	public int userIdChk(User_VO userVO) throws Exception {
		int result = join_Service.userIdChk(userVO);
		return result;
	};

	// 이메일 중복 체크
	@RequestMapping("/emailChk.do")
	@ResponseBody
	public int userEmailChk(User_VO userVO) throws Exception {
		int result = join_Service.userEmailChk(userVO);
		return result;
	};

	// 서비스 약관 이동
	@RequestMapping("/term_serviceAddForm.do")
	public ModelAndView termServiceGo() throws Exception {
		return new ModelAndView("home/service_terms");
	}

	// 개인정보 약관 이동
	@RequestMapping("/term_infoAddForm.do")
	public ModelAndView termInfoGo() throws Exception {
		return new ModelAndView("home/privacy_terms");
	}

	// 마케팅 약관 이동
	@RequestMapping("/term_marketingAddForm.do")
	public ModelAndView termMarketingGo() throws Exception {
		return new ModelAndView("home/marketing_terms");
	}

	// 회원가입
	@RequestMapping("/user_add.do")
	public ModelAndView getUserAdd(User_VO userVO) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/logindisplay.do");

		userVO.setPw(passwordEncoder.encode(userVO.getPw()));
		int result = join_Service.getUserAdd(userVO);
		return mv;
	}

	// 로그인
	@RequestMapping("/user_login.do")
	public ModelAndView getUserLogin(User_VO userVO, HttpSession session, RedirectAttributes redirectAttributes) {
		ModelAndView mv = new ModelAndView("redirect:/");

		String pwd = join_Service.getMemberPwd(userVO.getUser_id());

		if (!passwordEncoder.matches(userVO.getPw(), pwd)) {
			session.setAttribute("loginChk", "fail");
			// 로그인실패한걸 세션에 줄 필요 없겟지
			return mv;
		} else {
			session.setAttribute("loginChk", "ok");
			session.setAttribute("user_id", userVO.getUser_id());
//			if (userVO.getUser_id().equals("admin")) {
//				session.setAttribute("admin", "ok");
//			}
			return mv;
		}
	}
	
	@RequestMapping("/clearSession.do")
	public ModelAndView SessionClear(HttpSession session) {
		session.invalidate();
	    return new ModelAndView("redirect:/logindisplay.do");
	}
}
