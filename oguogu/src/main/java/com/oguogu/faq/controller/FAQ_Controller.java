package com.oguogu.faq.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class FAQ_Controller {

//	@Autowired
//	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/faq_list.do")
	public ModelAndView faqtList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("faq/faq_list");
		// 페이징은 나중에
		return mv;
	}
	
	@GetMapping("/faq_insertForm.do")
	public ModelAndView faqInsert(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("faq/faq_write");
		return mv;
	}
	
	@GetMapping("/faq_updateForm.do")
	public ModelAndView faqUpdate(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("faq/faq_update");
		return mv;
	}
	
}
