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
//import com.oguogu.comment.model.service.QnAComment_Service;
//import com.oguogu.comment.model.service.RepComment_Service;
//import com.oguogu.comment.model.vo.Comment_VO;
//import com.oguogu.comment.model.vo.QnAComment_VO;
//import com.oguogu.comment.model.vo.RepComment_VO;
//
//@Controller
//public class QnAComment_Controller {
//	@Autowired
//	private QnAComment_Service qnaComment_Service;
//	
//	@PostMapping("/qnacom_insert.do")
//	public ModelAndView qnacommInsert(QnAComment_VO qcvo, @ModelAttribute("cPage") String cPage,
//	        @ModelAttribute("one_idx") String one_idx) {
//	    ModelAndView mv = new ModelAndView("redirect:/qna_onelist.do");
//	    int result = qnaComment_Service.getQnACommInsert(qcvo);
//	    if (result > 0) {
//			return mv;
//		} else {
//			return null;
//		}
//	}
//
//	@PostMapping("/qnacom_delete.do")
//	public ModelAndView qnacommentDelete(@RequestParam("qnacom_idx") String qnacom_idx, @ModelAttribute("cPage") String cPage,
//	        @ModelAttribute("one_idx") String one_idx) {
//	    ModelAndView mv = new ModelAndView("redirect:/qna_onelist.do");
//	    int result = qnaComment_Service.getQnACommDelete(qnacom_idx);
//	    return mv;
//	}
//
//}
