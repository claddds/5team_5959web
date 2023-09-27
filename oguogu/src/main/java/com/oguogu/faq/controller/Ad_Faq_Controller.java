package com.oguogu.faq.controller;

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
import com.oguogu.faq.model.service.Ad_Faq_Service;
import com.oguogu.faq.model.vo.FAQ_VO;


@Controller
public class Ad_Faq_Controller {
	@Autowired
	private Ad_Faq_Service ad_Faq_Service;
	
	@Autowired
	private Paging paging;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/ad_faq_list.do")
	public ModelAndView getAd_Faq_List(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin/FAQ/admin_faq_list");
		int count = ad_Faq_Service.getTotalCount();
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
		List<FAQ_VO> f_list = ad_Faq_Service.getAd_Faq_List(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("f_list", f_list);
		mv.addObject("paging", paging);
		return mv;
	}
	
	@GetMapping("/faq_write.do")
	public ModelAndView getFaqInsertForm() {
		return new ModelAndView("admin/FAQ/faq_writeForm");
	}
	// 게시글 작성
	@PostMapping("/faq_insert.do")
	public ModelAndView getFaqdInsert(FAQ_VO faq_vo, HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("redirect:/ad_faq_list.do");
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			MultipartFile file = faq_vo.getFile();
			// 첨부파일이 무조건 있어야 할 시 if문을 안쓰면 되고, 기본 프로필을 쓸 때는 if문안에 해당 이미지를 넣어주면 됨
			if(file.isEmpty()) {
				faq_vo.setFaq_fname("");
			}else {
				// 같은이름이 없도록 UUID 사용
				UUID uuid = UUID.randomUUID();
				String f_name = uuid.toString()+ "_" + faq_vo.getFile().getOriginalFilename();
				faq_vo.setFaq_fname(f_name);
				
				// 이미지 저장
				byte[] in = faq_vo.getFile().getBytes();
				File out = new File(path, f_name);
				FileCopyUtils.copy(in, out);			
			}
			
			// 세션에서 nickname 가져오기
	        String nickname= (String) session.getAttribute("nickname");
	        
	        // 여기서 nickname를 모델에 추가
	        mv.addObject("nickname", nickname);
	        
			int res = ad_Faq_Service.getFaqInsert(faq_vo);
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
	  @GetMapping("/ad_faq_onelist.do")
	  public ModelAndView getFaqAdminOneList(String faq_idx) {
		  ModelAndView mv = new ModelAndView("admin/FAQ/admin_faq_onelist");
		  FAQ_VO faq_vo = ad_Faq_Service.getFaqAdminOneList(faq_idx);
		  mv.addObject("faq_vo", faq_vo);
		  return mv;
	  }
	  
	  	// 게시글 수정화면 이동 
		@PostMapping("/faq_UpdateForm.do")
		public ModelAndView getFaqUpdateForm(String faq_idx) {
			ModelAndView mv = new ModelAndView("admin/FAQ/faq_update");
			 FAQ_VO faq_vo = ad_Faq_Service.getFaqAdminOneList(faq_idx);
			mv.addObject("faq_vo", faq_vo);
			return mv;
		}
		
		// 게시글 수정 등록
		@PostMapping("/faq_update.do")
		public ModelAndView getFaq_Update(FAQ_VO faq_vo,HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("admin/FAQ/");
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			try {
				MultipartFile f_param = faq_vo.getFile();
				String old_f_name = faq_vo.getOld_f_name();
				
				if(f_param.isEmpty()) {
					faq_vo.setFaq_fname(old_f_name);
				}else {
					UUID uuid = UUID.randomUUID();
					String f_name = uuid.toString()+"_" + faq_vo.getFile().getOriginalFilename();
					faq_vo.setFaq_fname(f_name);

					byte[] in = faq_vo.getFile().getBytes();
					File out = new File(path, f_name);
					FileCopyUtils.copy(in, out);
					
				}
				int result = ad_Faq_Service.getFaq_Update(faq_vo);
				mv.setViewName("redirect:/ad_faq_onelist.do?faq_idx="+faq_vo.getFaq_idx());
				return mv;
			} catch (Exception e) {
				return null;
		
			}
		}
		// 게시글 삭제
		@PostMapping("faq_delete.do")
		public ModelAndView getFaq_Delete(FAQ_VO faq_vo) {
			ModelAndView mv = new ModelAndView("admin/FAQ/faq_delete");
			int result = ad_Faq_Service.getFaq_Delete(faq_vo);
				
			mv.addObject("result", result);
			mv.addObject("faq_vo", faq_vo);
			return mv;
		}
		
		// 검색
		@RequestMapping("/faq_search.do")
		public ModelAndView getSearch( HttpServletRequest request,
			    @RequestParam(defaultValue = "faq_title") String searchtype,
			    @RequestParam(defaultValue = "") String keyword) {
		    ModelAndView mv = new ModelAndView("admin/FAQ/admin_faq_search"); // 결과를 표시할 뷰 이름
		    
		    int count = ad_Faq_Service.getSearchTotalCount(searchtype,keyword);
			paging.setTotalRecord(count);
				System.out.print(count);

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
			 List<FAQ_VO> search = ad_Faq_Service.getSearch(searchtype, keyword ,paging.getOffset(), paging.getNumPerPage());
		    mv.addObject("search", search);
		    mv.addObject("paging", paging); // 페이징 정보를 뷰에 추가
		    return mv;
		}
}
