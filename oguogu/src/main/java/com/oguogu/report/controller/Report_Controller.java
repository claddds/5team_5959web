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

import com.oguogu.comment.model.service.RepComment_Service;
import com.oguogu.comment.model.vo.RepComment_VO;
import com.oguogu.common.Paging;
import com.oguogu.report.model.service.Report_Service;
import com.oguogu.report.model.vo.Report_VO;


@Controller
public class Report_Controller {

	@Autowired
	private Report_Service report_Service;
	
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private Paging paging;
	
	@RequestMapping("/rep_list.do")
	public ModelAndView reptList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("rep/rep_list");
		int count = report_Service.getTotalCount();
		paging.setTotalRecord(count);

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

		paging.setBeginBlock(
				(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);

		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

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
	public ModelAndView repInsert(Report_VO rvo,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("rep/rep_list");
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
			// 비밀글 체크 시 제목 앞에 붙이기
//			String lock = request.getParameter("lock_flag");
//			System.out.println("비밀글 여부 : " + lock); // 0:공개 | 1:비밀
//			// 비밀글 앞에는 [비밀글] 붙이기 위해 제목 가져오기
//			String title = rvo.getRep_title();
//			
//			if(lock.equals("1")) {
//				rvo.setRep_lock("1");
//			}else {
//				rvo.setRep_lock("0");
//			}
			
			// DB에 저장하기
			int res = report_Service.getInsert(rvo);
			if(res>0) {
				return mv;
			}else {
				return null;
			}
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
}
	// 상세보기
		@GetMapping("/rep_onelist.do")
		public ModelAndView repOneList(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("rep/rep_onelist");
			String rep_idx = request.getParameter("rep_idx");
			String cPage = request.getParameter("cPage");
			
			// 상세보기
			Report_VO rvo = report_Service.getOneList(rep_idx);
			
			// 댓글 가져오기
//			List<RepComment_VO> rc_list = repComment_Service.getRepCommList(rep_idx);
			
//			mv.addObject("rc_list", rc_list);
			mv.addObject("rvo", rvo);
			mv.addObject("cPage", cPage);
			return mv;
		}	
}	