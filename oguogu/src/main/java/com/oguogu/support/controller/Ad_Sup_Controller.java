package com.oguogu.support.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.common.Paging;
import com.oguogu.food.model.vo.Food_VO;
import com.oguogu.support.model.service.Ad_Sup_Service;
import com.oguogu.support.model.vo.Support_VO;
@Controller
public class Ad_Sup_Controller {
	@Autowired
	private Ad_Sup_Service ad_Sup_Service;
	
	@Autowired
	private Paging paging;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/ad_sup_list.do")
	public ModelAndView getAd_Sup_List(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin/support/admin_sup_list");
		int count = ad_Sup_Service.getTotalCount();
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
		List<Support_VO> ad_slist = ad_Sup_Service.getAd_Sup_List(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("ad_slist", ad_slist);
		mv.addObject("paging", paging);
		return mv;
	}
	
	@GetMapping("/sup_write.do")
	public ModelAndView getSupInsertForm() {
		return new ModelAndView("admin/support/sup_writeForm");
	}
	// 게시글 작성
	@PostMapping("/sup_insert.do")
	public ModelAndView getSupdInsert(Support_VO sup_vo, HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("redirect:/ad_sup_list.do");
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			MultipartFile file = sup_vo.getFile();
			// 첨부파일이 무조건 있어야 할 시 if문을 안쓰면 되고, 기본 프로필을 쓸 때는 if문안에 해당 이미지를 넣어주면 됨
			if(file.isEmpty()) {
				sup_vo.setNot_fname("");
			}else {
				// 같은이름이 없도록 UUID 사용
				UUID uuid = UUID.randomUUID();
				String f_name = uuid.toString()+ "_" + sup_vo.getFile().getOriginalFilename();
				sup_vo.setNot_fname(f_name);
				
				// 이미지 저장
				byte[] in = sup_vo.getFile().getBytes();
				File out = new File(path, f_name);
				FileCopyUtils.copy(in, out);			
			}
			
			// 세션에서 nickname 가져오기
	        String nickname= (String) session.getAttribute("nickname");
	        
	        // 여기서 nickname를 모델에 추가
	        mv.addObject("nickname", nickname);
	        
			int res = ad_Sup_Service.getSupInsert(sup_vo);
			if(res >0) {
				 return mv;
			}else {
				return null;
			}
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	  }
	 // 게시글 상세보기 
	  @GetMapping("/ad_sup_onelist.do")
	  public ModelAndView getSupAdminOneList(String not_idx) {
		  ModelAndView mv = new ModelAndView("admin/support/admin_sup_onelist");
		  Support_VO sup_vo = ad_Sup_Service.getSupAdminOneList(not_idx);
		  mv.addObject("sup_vo", sup_vo);
		  return mv;
	  }
	  
	  	// 게시글 수정화면 이동 
		@PostMapping("/sup_UpdateForm.do")
		public ModelAndView getSupUpdateForm(String not_idx) {
			ModelAndView mv = new ModelAndView("admin/support/sup_update");
			Support_VO sup_vo = ad_Sup_Service.getSupAdminOneList(not_idx);
			mv.addObject("sup_vo", sup_vo);
			return mv;
		}
		// 게시글 수정 등록
		@PostMapping("/sup_update.do")
		public ModelAndView getSup_Update(Support_VO sup_vo,HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("admin/support/");
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			try {
				MultipartFile f_param = sup_vo.getFile();
				String old_f_name = sup_vo.getOld_f_name();
				
				if(f_param.isEmpty()) {
					sup_vo.setNot_fname(old_f_name);
				}else {
					UUID uuid = UUID.randomUUID();
					String f_name = uuid.toString()+"_" + sup_vo.getFile().getOriginalFilename();
					sup_vo.setNot_fname(f_name);

					byte[] in = sup_vo.getFile().getBytes();
					File out = new File(path, f_name);
					FileCopyUtils.copy(in, out);
					
				}
				int result = ad_Sup_Service.getSup_Update(sup_vo);
				mv.setViewName("redirect:/ad_sup_onelist.do?not_idx="+sup_vo.getNot_idx());
				return mv;
			} catch (Exception e) {
				return null;
		
			}
		}
		// 게시글 삭제
		@PostMapping("/sup_delete.do")
		public ModelAndView getSup_Delete(Support_VO sup_vo) {
			ModelAndView mv = new ModelAndView("admin/support/sup_delete");
			int result = ad_Sup_Service.getSup_Delete(sup_vo);
				
			mv.addObject("result", result);
			mv.addObject("sup_vo", sup_vo);
			return mv;
		}
		
		// 검색
		@RequestMapping("/sup_search.do")
		public ModelAndView getSearch(HttpServletRequest request,
				@RequestParam(defaultValue = "faq_title") String searchtype,
				@RequestParam(defaultValue = "") String keyword) {
			ModelAndView mv = new ModelAndView("admin/support/admin_sup_search"); // 결과를 표시할 뷰 이름

			int count = ad_Sup_Service.getSearchTotalCount(searchtype, keyword);
			paging.setTotalRecord(count);
			System.out.print(count);

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

			// 시작 블록, 끝 블록
			paging.setBeginBlock(
					(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
			paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

			// 주의사항 (endblock이 totalpage 보다 클 때가 있다.)
			if (paging.getEndBlock() > paging.getTotalPage()) {
				paging.setEndBlock(paging.getTotalPage());
			}
			List<Support_VO> search = ad_Sup_Service.getSearch(searchtype, keyword, paging.getOffset(), paging.getNumPerPage());
			mv.addObject("search", search);
			mv.addObject("paging", paging); // 페이징 정보를 뷰에 추가
			return mv;
		}
}
