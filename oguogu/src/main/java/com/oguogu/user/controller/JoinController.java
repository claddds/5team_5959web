package com.oguogu.user.controller;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
		//패스워드 암호화
		userVO.setPw(passwordEncoder.encode(userVO.getPw()));
		//일반회원 가입 유저 설정
		userVO.setType("1");
		int result = join_Service.getUserAdd(userVO);
		return mv;
	}

	// 로그인
	@RequestMapping("/user_login.do")
	public String getUserLogin(User_VO userVO, HttpSession session, 
							   HttpServletRequest request) throws Exception {
		//DB에 가입한 아이디 있는지 찾기
		User_VO uvo = join_Service.getUserOneList(userVO.getUser_id());
		//가입한 회원이 없거나 
		if(uvo == null || uvo.getStatus().equals("1")) {
			session.setAttribute("loginChk", "nonono");
			return "redirect:/logindisplay.do";
		}
		if (!passwordEncoder.matches(userVO.getPw(), uvo.getPw())) {
			session.setAttribute("loginChk", "fail");
			return "redirect:/logindisplay.do";
		} else {
			
			session.setAttribute("loginChk", "ok");
			session.setAttribute("user_id", uvo.getUser_id());
			session.setAttribute("email", uvo.getEmail());
			session.setAttribute("nickname", uvo.getNickname());
			session.setAttribute("type", uvo.getType());
			
		    return "redirect:/";
		}
	}
	
	// 로그인 실패 했을 때 세션 삭제
	@RequestMapping("/clearSession.do")
	public ModelAndView SessionClear(HttpSession session) throws Exception {
		session.invalidate();
		System.out.println("로그인 실패 세션 삭제");
		return new ModelAndView("redirect:/logindisplay.do");
	}
	
	// 로그아웃
	@RequestMapping("/user_logout.do")
	public ModelAndView getLogout(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/");
		session.invalidate();
		System.out.println("로그아웃 세션 삭제");
		return mv;
	}
	
	//아이디,비번찾기 창으로 이동
	@RequestMapping("/IdPwFinddisplay.do")
	public ModelAndView IdPwFinddisplay() throws Exception {
		return new ModelAndView("home/id_pw_find");
	}
	
	//아이디 찾기
	@RequestMapping("/IdFindEmail.do")
	@ResponseBody
	public Map<String, String> getIdFind(User_VO userVO) throws Exception{
		Map<String, String> map = new HashMap<String, String>();
		//아이디 찾기 할 때 씀
		User_VO uvo = join_Service.getFindId(userVO.getEmail());
		
		if(uvo == null) {
			map.put("message", "ok");
		}else {
			map.put("type", uvo.getType());
			map.put("user_id", uvo.getUser_id());
		}
		return map;
	}


}
