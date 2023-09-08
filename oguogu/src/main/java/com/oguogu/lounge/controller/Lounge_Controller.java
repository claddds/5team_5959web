package com.oguogu.lounge.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.comment.model.service.Comment_Service;
import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.common.Paging;
import com.oguogu.lounge.model.service.Lounge_Service;
import com.oguogu.lounge.model.vo.Lounge_VO;

@Controller
public class Lounge_Controller {

	@Autowired
	private Lounge_Service lounge_Serivce;
	
	@Autowired
	private Comment_Service comment_Service;
	
	@Autowired
	private Paging paging;
	
	@RequestMapping("/lounge_list.do")
	public ModelAndView bbsList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_list");
		// 페이징
		// 전체 게시물의 수
		int count = lounge_Serivce.getTotalCount();
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

		List<Lounge_VO> lounge_list = lounge_Serivce.getList(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("lounge_list", lounge_list);
		mv.addObject("paging", paging);
		return mv;
	}

	@RequestMapping("/lounge_share_list.do")
	public ModelAndView loungeSharetList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_share_list");
		// 페이징
		// 전체 게시물의 수
		int count = lounge_Serivce.getTotalCount();
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

		List<Lounge_VO> lounge_share_list = lounge_Serivce.getList(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("lounge_share_list", lounge_share_list);
		mv.addObject("paging", paging);
		return mv;
	}
	
	@RequestMapping("/lounge_recomm_list.do")
	public ModelAndView loungeRecommList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_recomm_list");
		// 페이징
		// 전체 게시물의 수
		int count = lounge_Serivce.getTotalCount();
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

		List<Lounge_VO> lounge_recomm_list = lounge_Serivce.getList(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("lounge_recomm_list", lounge_recomm_list);
		mv.addObject("paging", paging);
		return mv;
	}
	
	@RequestMapping("/lounge_qna_list.do")
	public ModelAndView loungeQnatList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_qna_list");
		// 페이징
		// 전체 게시물의 수
		int count = lounge_Serivce.getTotalCount();
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

		List<Lounge_VO> lounge_qna_list = lounge_Serivce.getList(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("lounge_qna_list", lounge_qna_list);
		mv.addObject("paging", paging);
		return mv;
	}
	
	// 삽입하기
	@GetMapping("/lounge_insertForm.do")
	public ModelAndView loungeInsertForm(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_write");
		return mv;
	}
	
	@PostMapping("/lounge_insert.do")
	public ModelAndView loungeInsert(Lounge_VO lvo,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:/lounge.list.do");
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			MultipartFile file = lvo.getFile();
			if (file.isEmpty()) {
				lvo.setLo_fname("");
			} else {
				// 같은 이름의 파일 없도록 UUID 사용
				UUID uuid = UUID.randomUUID();
				String lo_fname = uuid.toString() + "_" + lvo.getFile().getOriginalFilename();
				lvo.setLo_fname(lo_fname);

				// 이미지 저장
				byte[] in = lvo.getFile().getBytes();
				File out = new File(path, lo_fname);
				FileCopyUtils.copy(in, out);
			}
		} catch (Exception e) {
			return null;
		}
		return mv;
	}
	
	// 상세보기
	@GetMapping("/lounge_onelist.do")
	public ModelAndView loungeOnelist(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_onelist");
		String lo_idx = request.getParameter("lo_idx");
		String cPage = request.getParameter("cPage");

		// 조회수 업데이트
		int res = lounge_Serivce.getHitUpdate(lo_idx);

		// 상세보기
		Lounge_VO lvo = lounge_Serivce.getOneList(lo_idx);

		// 댓글 가져오기
		List<Comment_VO> c_list = comment_Service.getCommList(lo_idx);

		mv.addObject("c_list", c_list);
		mv.addObject("lvo", lvo);
		mv.addObject("cPage", cPage);
		return mv;
	}
	
	// 댓글은 Comment_Controller에서 작성
	
	// 업데이트
	@GetMapping("/lounge_updateForm.do")
	public ModelAndView loungeUpdateForm(@ModelAttribute("cPage") String cPage, @ModelAttribute("lo_idx") String lo_idx) {
		ModelAndView mv = new ModelAndView("lounge/lounge_update");
		Lounge_VO lvo = lounge_Serivce.getOneList(lo_idx);
		mv.addObject("lvo", lvo);
		return mv;
	}
	
}
