package com.oguogu.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.user.model.service.Join_Service;
import com.oguogu.user.model.vo.User_VO;

@Controller
public class JoinController {
	
	@Autowired
	private Join_Service join_Service;
	
//	@Autowired
//	private BCryptPasswordEncoder passwordEncoder;
	
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
	// 아이디 중복 체크
	@RequestMapping("/emailChk.do")
	@ResponseBody
	public int userEmailChk(User_VO userVO) throws Exception {
		int result = join_Service.userEmailChk(userVO);
		return result;
	};
	
}
