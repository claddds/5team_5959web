//package com.oguogu.comment.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.oguogu.comment.model.service.Comment_Service;
//import com.oguogu.comment.model.vo.Comment_VO;
//
//@Controller
//public class Comment_Controller {
//	@Autowired
//	private Comment_Service comment_Service;
//	
//	@PostMapping("/com_insert.do")
//	public ModelAndView commInsert(Comment_VO cvo, @ModelAttribute("cPage") String cPage,
//			@ModelAttribute("lo_idx") String lo_idx) {
//		ModelAndView mv = new ModelAndView("lounge/");
//		int result = comment_Service.getCommInsert(cvo);
//		mv.setViewName("redirect:/lounge_onelist.do?com_idx=" + cvo.getCom_idx());
//		if (result > 0) {
//			return mv;
//		} else {
//			return null;
//		}
//	}
//	
//	@PostMapping("/com_delete.do")
//	public ModelAndView commentDelete(@RequestParam("com_idx") String com_idx, @ModelAttribute("cPage") String cPage,
//			@ModelAttribute("lo_idx") String lo_idx) {
//		ModelAndView mv = new ModelAndView("redirect:/lounge_onelist.do");
//		
//		mv.addObject("cPage", cPage); // cPage 값을 추가
//		mv.addObject("lo_idx", lo_idx); // lo_idx 값을 추가
//		
//		int result = comment_Service.getCommDelete(com_idx);
//		return mv;
//	}
//}
