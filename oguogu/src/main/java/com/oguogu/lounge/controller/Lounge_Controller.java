package com.oguogu.lounge.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import com.oguogu.comment.model.service.Comment_Service;
import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.common.Paging;
import com.oguogu.lounge.model.service.Lounge_Service;
import com.oguogu.lounge.model.vo.Lounge_VO;

@Controller
public class Lounge_Controller {

	@Autowired
	private Lounge_Service lounge_Serivce;
	

	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private Paging paging;
	
	@RequestMapping("/lounge_list.do")
	public ModelAndView loungeList(HttpServletRequest request) {
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

	// 카테고리 - 일상 공유
	@RequestMapping("/lounge_share_list.do")
	public ModelAndView loungeSharetList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_share_list");
		int count = lounge_Serivce.getTotalCount();
		paging.setTotalRecord(count);
		
		if(paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		}else {
			paging.setTotalPage(paging.getTotalRecord()/ paging.getNumPerPage());
			if(paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() +1);
			}
		}
		
	    String cPage = request.getParameter("cPage");
		if(cPage == null) {
			paging.setNowPage(1);
		}else {
			paging.setNowPage(Integer.parseInt(cPage));	
		}
	
		paging.setOffset(paging.getNumPerPage()* (paging.getNowPage()-1));
		
		// 시작 블록, 끝 블록
		paging.setBeginBlock((int)((paging.getNowPage()-1)/paging.getPagePerBlock()) * paging.getPagePerBlock()+1);
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() -1);
		
		
		// 주의사항 (endblock이 totalpage 보다 클 때가 있다.)
		if(paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}
		List<Lounge_VO> lounge_share_list = lounge_Serivce.getLo_Alist(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("lounge_share_list", lounge_share_list);
		mv.addObject("paging", paging);
		return mv;
	}
	
	@RequestMapping("/lounge_recomm_list.do")
	public ModelAndView loungeRecommList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_recomm_list");
		int count = lounge_Serivce.getTotalCount();
		paging.setTotalRecord(count);
		
		if(paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		}else {
			paging.setTotalPage(paging.getTotalRecord()/ paging.getNumPerPage());
			if(paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() +1);
			}
		}
		
	    String cPage = request.getParameter("cPage");
		if(cPage == null) {
			paging.setNowPage(1);
		}else {
			paging.setNowPage(Integer.parseInt(cPage));	
		}
	
		paging.setOffset(paging.getNumPerPage()* (paging.getNowPage()-1));
		
		// 시작 블록, 끝 블록
		paging.setBeginBlock((int)((paging.getNowPage()-1)/paging.getPagePerBlock()) * paging.getPagePerBlock()+1);
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() -1);
		
		
		// 주의사항 (endblock이 totalpage 보다 클 때가 있다.)
		if(paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}
		List<Lounge_VO> lounge_recomm_list = lounge_Serivce.getLo_Blist(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("lounge_recomm_list", lounge_recomm_list);
		mv.addObject("paging", paging);
		return mv;
	}
	
	@RequestMapping("/lounge_qna_list.do")
	public ModelAndView loungeQnatList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_qna_list");
		int count = lounge_Serivce.getTotalCount();
		paging.setTotalRecord(count);
		
		if(paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		}else {
			paging.setTotalPage(paging.getTotalRecord()/ paging.getNumPerPage());
			if(paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() +1);
			}
		}
		
	    String cPage = request.getParameter("cPage");
		if(cPage == null) {
			paging.setNowPage(1);
		}else {
			paging.setNowPage(Integer.parseInt(cPage));	
		}
	
		paging.setOffset(paging.getNumPerPage()* (paging.getNowPage()-1));
		
		// 시작 블록, 끝 블록
		paging.setBeginBlock((int)((paging.getNowPage()-1)/paging.getPagePerBlock()) * paging.getPagePerBlock()+1);
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() -1);
		
		
		// 주의사항 (endblock이 totalpage 보다 클 때가 있다.)
		if(paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}
		List<Lounge_VO> lounge_qna_list = lounge_Serivce.getLo_Clist(paging.getOffset(), paging.getNumPerPage());
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
		ModelAndView mv = new ModelAndView("redirect:/lounge_list.do");
		String path = request.getSession().getServletContext().getRealPath("/resources/images");
		try {
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
			// 패스워드 암호화
			lvo.setLo_pwd(passwordEncoder.encode(lvo.getLo_pwd()));
			int res = lounge_Serivce.getInsert(lvo);
			if (res > 0) {
				return mv;
			} else {
				return null;
			}
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
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
		List<Comment_VO> c_list = lounge_Serivce.getCommList(lo_idx);
		System.out.println(lo_idx);
		mv.addObject("c_list", c_list);
		mv.addObject("lvo", lvo);
		mv.addObject("cPage", cPage);
		return mv;
	}
	
	// 댓글은 Comment_Controller에서 작성
	
	// 수정
	@PostMapping("/lounge_updateForm.do")
	public ModelAndView loungeUpdateForm(@ModelAttribute("cPate") String cPage, @ModelAttribute("lo_idx") String lo_idx) {
		ModelAndView mv = new ModelAndView("lounge/lounge_update");
		Lounge_VO lvo = lounge_Serivce.getOneList(lo_idx);
		mv.addObject("lvo", lvo);
		return mv;
	}
	// 게시글 수정 등록
    @PostMapping("/lounge_update.do")
    public ModelAndView getUpdate(Lounge_VO lvo, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("lounge/");
        String path = request.getSession().getServletContext().getRealPath("/resources/images");
        try {
            MultipartFile file = lvo.getFile();
            String lo_old_fname = lvo.getLo_old_fname();

            if (file.isEmpty()) {
            	lvo.setLo_old_fname(lo_old_fname);
            } else {
                UUID uuid = UUID.randomUUID();
                String lo_fname = uuid.toString() + "" + lvo.getFile().getOriginalFilename();
                lvo.setLo_fname(lo_fname);

                byte[] in = lvo.getFile().getBytes();
                File out = new File(path, lo_fname);
                FileCopyUtils.copy(in, out);

            }
            int result = lounge_Serivce.getUpdate(lvo);
            mv.setViewName("redirect:/lounge_onelist.do?lo_idx=" + lvo.getLo_idx());
            return mv;
        } catch (Exception e) {
            return null;
        }
    }
	
	// 삭제
	@PostMapping("/lounge_deleteForm.do")
	public ModelAndView deleteForm(@ModelAttribute("cPage") String cPage, @ModelAttribute("lo_idx") String lo_idx) {
		ModelAndView mv = new ModelAndView("lounge/lounge_delete");
		return mv;
	}

	@PostMapping("/lounge_delete.do")
	public String loungeDelete(@RequestParam("lo_pwd") String lo_pwd, @RequestParam("cPage") String cPage, RedirectAttributes rttr,
			@ModelAttribute("lo_idx") String lo_idx, Model model) {
		// 비밀번호가 맞는지 체크 하자.
		// DB에서 암호 얻기
		Lounge_VO lvo = lounge_Serivce.getOneList(lo_idx);
		String dbpwd = lvo.getLo_pwd();
		System.out.println(lo_pwd);
		// passwordEncoder.matches(암호화되지 않은것, 암호화 된것 )
		if (!passwordEncoder.matches(lo_pwd, dbpwd)) {
			model.addAttribute("pwchk", "fail");  
			return "lounge/lounge_delete";
		} else {
			// 원글삭제 시 상태값을 0 => 1 로 변경 시키자
			int result = lounge_Serivce.getDelete(lo_idx);
			rttr.addFlashAttribute("cPage", cPage);
			rttr.addAttribute("del_alert","ok");
			return "redirect:/lounge_list.do";
		}
	}
	
	@PostMapping("/com_insert.do")
	public ModelAndView commInsert(Comment_VO cvo, @ModelAttribute("cPage") String cPage,
			@ModelAttribute("lo_idx") String lo_idx) {
		ModelAndView mv = new ModelAndView("lounge/");
		int result = lounge_Serivce.getCommInsert(cvo);
		mv.setViewName("redirect:/lounge_onelist.do?com_idx=" + cvo.getCom_idx());
		if (result > 0) {
			return mv;
		} else {
			return null;
		}
	}
	@PostMapping("/com_delete.do")
	public ModelAndView commentDelete(@RequestParam("com_idx") String com_idx, @ModelAttribute("cPage") String cPage,
			@ModelAttribute("lo_idx") String lo_idx) {
		ModelAndView mv = new ModelAndView("redirect:/lounge_onelist.do");
		int result = lounge_Serivce.getCommDelete(com_idx);
		return mv;
	}

//	 @PostMapping("/com_delete.do")
//     public String commDelete(@RequestParam("cPage") String cPage, RedirectAttributes rttr,
//    		 @RequestParam("lo_idx") String lo_idx,@RequestParam("com_idx") String com_idx) {
//		 Lounge_VO cvo = lounge_Serivce.getOneList(lo_idx);
//         int result = lounge_Serivce.getCommDelete(com_idx);
//         System.out.println("오니?" + lo_idx);
//         rttr.addFlashAttribute("cPage", cPage);
//         rttr.addAttribute("cvo", cvo);
//         rttr.addAttribute("lo_idx", lo_idx);
//         return  "redirect:/lounge_onelist.do";
//     }
}