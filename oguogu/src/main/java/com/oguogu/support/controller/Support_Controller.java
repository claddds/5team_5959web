package com.oguogu.support.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.common.Paging;
import com.oguogu.lounge.model.vo.Lounge_VO;
import com.oguogu.support.model.service.Support_Service;
import com.oguogu.support.model.vo.Support_VO;


@Controller
public class Support_Controller {

	@Autowired
	private Support_Service support_Service;
	
	@Autowired
	private Paging paging;
	
//	private BCryptPasswordEncoder passwordEncoder;
	
	// 공지사항 게시글 목록
	@RequestMapping("/sup_list.do")
	public ModelAndView suptList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("support/sup_list");
		// 페이징
				// 전체 게시물의 수
				int count = support_Service.getTotalCount();
				paging.setTotalRecord(count);

				// 전체 페이지의 수
				if (paging.getTotalRecord() <= paging.getNumPerPage()) {
					paging.setTotalPage(1);
				} else {
					paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
					if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
						paging.setTotalPage(paging.getTotalPage() + 1);
					}
				}
				// 현재 페이지
				String cPage = request.getParameter("cPage");
				if (cPage == null) {
					paging.setNowPage(1);
				} else {
					paging.setNowPage(Integer.parseInt(cPage));
				}
				paging.setOffset(paging.getNumPerPage() * (paging.getNowPage() - 1));

				// 시작블록과 끝블록 구하기
				paging.setBeginBlock(
						(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
				paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

				// 주의사항
				if (paging.getEndBlock() > paging.getTotalPage()) {
					paging.setEndBlock(paging.getTotalPage());
				}

				List<Support_VO> sup_list = support_Service.getList(paging.getOffset(), paging.getNumPerPage());
				mv.addObject("sup_list", sup_list);
				mv.addObject("paging", paging);
				return mv;
	}
	
	// 상세보기
	@GetMapping("/sup_onelist.do")
	public ModelAndView loungeOnelist(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("support/sup_onelist");
		String not_idx = request.getParameter("not_idx");
		String cPage = request.getParameter("cPage");

		// 상세보기
		Support_VO svo = support_Service.getOneList(not_idx);

		// 공지사항에는 댓글 없음

		mv.addObject("svo", svo);
		mv.addObject("cPage", cPage);
		return mv;
	}
}
