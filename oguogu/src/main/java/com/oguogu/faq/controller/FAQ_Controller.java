package com.oguogu.faq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.common.Paging;
import com.oguogu.faq.model.service.FAQ_Service;
import com.oguogu.faq.model.vo.FAQ_VO;

// 사용자는 글쓰기 기능 X >> 관리자가 글 올리면 보는 것만 가능
@Controller
public class FAQ_Controller {
	
	@Autowired
	private FAQ_Service faq_Service;
	
	@Autowired
	private Paging paging;
	
	@RequestMapping("/faq_list.do")
	public ModelAndView getList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("faq/faq_list");
		int count = faq_Service.getTotalCount();
		paging.setTotalRecord(count);

		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		} else {
			paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() + 1);
			}
		}
		String cPage = request.getParameter("cPage");
		if (cPage == null) {
			paging.setNowPage(1);
		} else {
			paging.setNowPage(Integer.parseInt(cPage));
		}
		paging.setOffset(paging.getNumPerPage() * (paging.getNowPage() - 1));

		paging.setBeginBlock(
				(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);

		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

		if (paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}

		List<FAQ_VO> faq_list = faq_Service.getList(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("faq_list", faq_list);
		mv.addObject("paging", paging);
		return mv;
	}
	
	// 상세보기
	@GetMapping("/faq_onelist.do")
	public ModelAndView getOneList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("faq/faq_onelist");
		String faq_idx = request.getParameter("faq_idx");
		String cPage = request.getParameter("cPage");

		// 상세보기
		FAQ_VO faqvo = faq_Service.getOneList(faq_idx);

		mv.addObject("faqvo", faqvo);
		mv.addObject("cPage", cPage);
		return mv;
	}
}
