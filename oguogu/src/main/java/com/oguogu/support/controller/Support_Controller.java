package com.oguogu.support.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.report.service.ReportService;
import com.oguogu.support.service.SupportService;

@Controller
public class Support_Controller {
	@Autowired
	private SupportService supportService;

//	@Autowired
//	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/sup_list.do")
	public ModelAndView suptList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("support/sup_list");
		// 페이징은 나중에
		return mv;
	}
	
	@GetMapping("/sup_insertForm.do")
	public ModelAndView supInsert(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("support/sup_write");
		return mv;
	}
}
