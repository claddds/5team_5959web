package com.oguogu.report.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.common.Paging;
import com.oguogu.report.model.service.Report_Service;
import com.oguogu.report.model.vo.Report_VO;


@Controller
public class Report_Controller {

	@Autowired
	private Report_Service report_Service;
	
//	@Autowired
//	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private Paging paging;
	
	@RequestMapping("/rep_list.do")
	public ModelAndView reptList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("rep/rep_list");
		// 페이징
		// 전체 게시물의 수
		int count = report_Service.getTotalCount();
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

		List<Report_VO> rep_list = report_Service.getList(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("rep_list", rep_list);
		mv.addObject("paging", paging);
		return mv;
	}
	
	@GetMapping("/rep_insertForm.do")
	public ModelAndView repInsertForm(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("rep/rep_write");
		return mv;
	}
	
	@PostMapping("/rep_insert.do")
	public ModelAndView loungeInsert(Report_VO rvo,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:/rep.list.do");
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			MultipartFile file = rvo.getFile();
			if (file.isEmpty()) {
				rvo.setRep_fname("");
			} else {
				// 같은 이름의 파일 없도록 UUID 사용
				UUID uuid = UUID.randomUUID();
				String rep_fname = uuid.toString() + "_" + rvo.getFile().getOriginalFilename();
				rvo.setRep_fname(rep_fname);
				// 이미지 저장
				byte[] in = rvo.getFile().getBytes();
				File out = new File(path, rep_fname);
				FileCopyUtils.copy(in, out);
			}
		} catch (Exception e) {
			return null;
		}
		return mv;
	}

	// 상세보기
		@GetMapping("/rep_onelist.do")
		public ModelAndView repOneList(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("rep/onelist");
			String rep_idx = request.getParameter("rep_idx");
			
			// 상세보기
			Report_VO rvo = report_Service.getOneList(rep_idx);
			
			mv.addObject("rvo", rvo);
			return mv;
		}	
}	

