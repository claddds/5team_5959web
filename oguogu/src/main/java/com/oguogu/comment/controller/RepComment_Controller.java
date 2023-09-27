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
//import com.oguogu.comment.model.service.RepComment_Service;
//import com.oguogu.comment.model.vo.Comment_VO;
//import com.oguogu.comment.model.vo.RepComment_VO;
//
//@Controller
//public class RepComment_Controller {
//	@Autowired
//	private RepComment_Service repcomment_Service;
//	
//	@PostMapping("/repcom_insert.do")
//	public ModelAndView repcommInsert(RepComment_VO rcvo, @ModelAttribute("cPage") String cPage,
//			@ModelAttribute("rep_idx") String rep_idx) {
//		ModelAndView mv = new ModelAndView("rep/rep_onelist");
//		int result = repcomment_Service.getRepCommInsert(rcvo);
//		return mv;
//	}
//	
//	@PostMapping("/repcom_delete.do")
//	public ModelAndView repcommentDelete(@RequestParam("repcom_idx") String repcom_idx, @ModelAttribute("cPage") String cPage,
//			@ModelAttribute("rep_idx") String rep_idx) {
//		ModelAndView mv = new ModelAndView("rep/rep_onelist");
//		int result = repcomment_Service.getRepCommDelete(repcom_idx);
//		return mv;
//	}
//}
