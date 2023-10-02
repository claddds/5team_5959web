package com.oguogu.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.common.Paging;
import com.oguogu.user.model.service.User_service;
import com.oguogu.user.model.vo.User_VO;

@Controller
public class AdminUserController {

	@Autowired
	private User_service user_service;
	@Autowired
	private Paging paging;

	// 사이드바 => 회원목록
	@GetMapping("/admin_user.do")
	public ModelAndView getHomeDisplay() {
		return new ModelAndView("/admin/user/admin_user");
	}

	// 사이드바 => 탈퇴회원목록
	@GetMapping("/admin_del_user.do")
	public ModelAndView Admin_del() {
		return new ModelAndView("/admin/user/admin_del_user");
	}

	// 사이드바 => 관리자목록
	@GetMapping("/admin_list.do")
	public ModelAndView Admin_list() {
		return new ModelAndView("/admin/user/admin_list");
	}

	// 사이드바 => 신고페이지
	@GetMapping("/admin_report.do")
	public ModelAndView Admin_report() {
		return new ModelAndView("/admin/report/report_list");
	}

	// 사이드바 => QnA페이지
	@GetMapping("/qna_list.do")
	public ModelAndView Admin_qan() {
		return new ModelAndView("qna/qna_list");
	}

	// 사이드바 => FAQ페이지
	@GetMapping("/admin_faq.do")
	public ModelAndView Admin_faq() {
		return new ModelAndView("/admin/FAQ/admin_faq_list");
	}
	
	// 회원 목록 리스트 보기
	@RequestMapping(value = "/getUserData.do",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getUserList(HttpServletRequest request, @RequestBody Map<String, Object> param) {
		System.out.println("요청");
		Map<String,Object> mv = new HashMap<>();
		int offset = (Integer.parseInt(param.get("nowPage").toString())  - 1)* Integer.parseInt(param.get("rowCnt").toString());
		int rowCnt = Integer.parseInt(param.get("rowCnt").toString());
		param.put("offset",offset);
		param.put("rowCnt",rowCnt);
		List<User_VO> ulist = user_service.getUserList(param);
		System.out.println(ulist);
		int totCnt = user_service.getUserListCnt(param);
		mv.put("ulist", ulist);
		mv.put("totCnt", totCnt);
		return mv;
	}
	
	//유저 리폿
	@RequestMapping(value = "/setUserReport.do",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> setUserReport(HttpServletRequest request, @RequestBody Map<String, Object> param) {
		Map<String,Object> mv = new HashMap<>();
		mv.put("result", user_service.setUserReport(param));
		return mv;
	}
	
	//유저 관리자전환
	@RequestMapping(value = "/setUserChangeManager.do",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> setUserChangeManager(HttpServletRequest request, @RequestBody Map<String, Object> param) {
		Map<String,Object> mv = new HashMap<>();
		mv.put("result", user_service.setUserChangeManager(param));
		return mv;
	}
	
    // 탈퇴 회원 목록 리스트 보기
	@RequestMapping(value = "/getDelUserData.do",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getDelUserList(HttpServletRequest request, @RequestBody Map<String, Object> param) {
		System.out.println("요청");
		Map<String,Object> mv = new HashMap<>();
		int offset = (Integer.parseInt(param.get("nowPage").toString())  - 1)* Integer.parseInt(param.get("rowCnt").toString());
		int rowCnt = Integer.parseInt(param.get("rowCnt").toString());
		param.put("offset",offset);
		param.put("rowCnt",rowCnt);
		List<User_VO> dellist = user_service.getDelUserList(param);
		System.out.println(dellist);
		int totCnt = user_service.getDelUserListCnt(param);
		mv.put("dellist", dellist);
		mv.put("totCnt", totCnt);
		return mv;
	}
		
		
}
