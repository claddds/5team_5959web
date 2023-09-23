package com.oguogu.qna.controller;

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

import com.oguogu.common.Paging;
import com.oguogu.qna.model.service.Qna_Service;
import com.oguogu.qna.model.vo.Qna_VO;

@Controller
public class Qna_Controller {

	@Autowired
	private Qna_Service qna_Service;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private Paging paging;
	
	// qna는 유저의 1:1 문의 게시판
	@RequestMapping("/qna_list.do")
	public ModelAndView qnaList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("qna/qna_list");
		// 페이징
		// 전체 게시물의 수
		int count = qna_Service.getTotalCount();
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

		List<Qna_VO> qna_list = qna_Service.getList(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("qna_list", qna_list);
		mv.addObject("paging", paging);
		return mv;
	}
	
	@GetMapping("/qna_insertForm.do")
	public ModelAndView qnaInsertForm(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("qna/qna_write");
		return mv;
	}
	
	@PostMapping("/qna_insert.do")
	public ModelAndView qnaInsert(Qna_VO qvo,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("qna/qna_list");
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			MultipartFile file = qvo.getFile();
			if (file.isEmpty()) {
				qvo.setOne_fname("");
			} else {
				// 같은 이름의 파일 없도록 UUID 사용
				UUID uuid = UUID.randomUUID();
				String one_fname = uuid.toString() + "_" + qvo.getFile().getOriginalFilename();
				qvo.setOne_fname(one_fname);
				// 이미지 저장
				byte[] in = qvo.getFile().getBytes();
				File out = new File(path, one_fname);
				FileCopyUtils.copy(in, out);
			}
			// 비밀글 체크 시 제목 앞에 붙이기
//			String lock = request.getParameter("lock_flag");
//			System.out.println("비밀글 여부 : " + lock); // 0:공개 | 1:비밀
			// 비밀글 앞에는 [비밀글] 붙이기 위해 제목 가져오기
//			String title = qvo.getOne_title();
//			
//			if(lock.equals("1")) {
//				qvo.setOne_lock("1");
//			}else {
//				qvo.setOne_lock("0");
//			}
			// DB에 저장하기
			int res = qna_Service.getInsert(qvo);
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
		@GetMapping("/qna_onelist.do")
		public ModelAndView repOneList(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("qna/qna_onelist");
			String one_idx = request.getParameter("one_idx");
			
			// 상세보기
			Qna_VO qvo = qna_Service.getOneList(one_idx);
			mv.addObject("qvo", qvo);
			return mv;
		}	
		
		// 수정
		@GetMapping("/qna_updateForm.do")
		public ModelAndView qnaUpdateForm(@ModelAttribute("cPage") String cPage, 
				@ModelAttribute("one_idx") String one_idx) {
			ModelAndView mv = new ModelAndView("qna/qna_update");
			Qna_VO qvo = qna_Service.getOneList(one_idx);
			mv.addObject("qvo", qvo);
			return mv;
		}
		@PostMapping("/qna_update.do")
		public ModelAndView qnaUpdate(Qna_VO qvo,HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("qna/qna_list");
			try {
				String path = request.getSession().getServletContext().getRealPath("/resources/images");
				MultipartFile file = qvo.getFile();
				if (file.isEmpty()) {
					qvo.setOne_fname("");
				} else {
					// 같은 이름의 파일 없도록 UUID 사용
					UUID uuid = UUID.randomUUID();
					String one_fname = uuid.toString() + "_" + qvo.getFile().getOriginalFilename();
					qvo.setOne_fname(one_fname);

					// 이미지 저장
					byte[] in = qvo.getFile().getBytes();
					File out = new File(path, one_fname);
					FileCopyUtils.copy(in, out);
				}
					// DB에 저장하기
					int res = qna_Service.getInsert(qvo);
					if(res>0) {
						mv.setViewName("redirect:/qna_onelist.do");
						return mv;
					}else {
						return null;
					}
				} catch (Exception e) {
					System.out.println(e);
					return null;
				}
		}
}	

