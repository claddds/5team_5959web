package com.oguogu.comment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.comment.model.service.Comment_Service;
import com.oguogu.comment.model.vo.Comment_VO;

@Controller
public class Comment_Controller {
	@Autowired
	private Comment_Service comment_Service;
	
	@PostMapping("/com_insert.do")
	public ModelAndView commInsert(Comment_VO cvo, @ModelAttribute("cPage") String cPage,
			@ModelAttribute("lo_idx") String lo_idx) {
		ModelAndView mv = new ModelAndView("redirect:/lounge_onelist.do");
		int result = comment_Service.getCommInsert(cvo);
		return mv;
	}
	
	@PostMapping("/com_delete.do")
	public ModelAndView commentDelete(@RequestParam("com_idx") String com_idx, @ModelAttribute("cPage") String cPage,
			@ModelAttribute("lo_idx") String lo_idx) {
		ModelAndView mv = new ModelAndView("redirect:/lounge_onelist.do");
		int result = comment_Service.getCommDelete(com_idx);
		return mv;
	}
	
	@PostMapping("/com_update.do")
	public ModelAndView commUpdate(Comment_VO cvo, @ModelAttribute("cPage") String cPage,
			@ModelAttribute("lo_idx") String lo_idx) {
		ModelAndView mv = new ModelAndView("redirect:/lounge_onelist.do");
		int result = comment_Service.getCommUpdate(cvo);
		return mv;
	}
	
	
}
