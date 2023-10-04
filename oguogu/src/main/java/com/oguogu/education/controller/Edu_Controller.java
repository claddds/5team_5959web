package com.oguogu.education.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import com.oguogu.education.model.service.Edu_Service;
import com.oguogu.education.model.vo.Education_VO;

@Controller
public class Edu_Controller {
	@Autowired
	private Edu_Service edu_Service;
	
	@Autowired
	private Paging paging;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	

	@RequestMapping("/admin_edulist.do")
	public ModelAndView getEdu_List(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin/education/admin_edu_list");
		
		int count = edu_Service.getTotalCount();
		paging.setTotalRecord(count);
		System.out.println(count);
		
		
		if(paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		}else {
			paging.setTotalPage(paging.getTotalRecord()/ paging.getNumPerPage());
			if(paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() +1);
			}
		}
		
	    String cPage = request.getParameter("cPage");
	    System.out.println(cPage);
		if(cPage == null) {
			paging.setNowPage(1);
			System.out.println(cPage);
		}else {
			paging.setNowPage(Integer.parseInt(cPage));	
		}

		

		paging.setOffset(paging.getNumPerPage() * (paging.getNowPage()-1));
		
		// 시작 블록, 끝 블록
		paging.setBeginBlock((int)((paging.getNowPage()-1) / paging.getPagePerBlock()) * paging.getPagePerBlock()+1);
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() -1);
		
		
		// 주의사항 (endblock이 totalpage 보다 클 때가 있다.)
		if(paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}
		List<Education_VO> elist = edu_Service.getEdu_List(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("elist", elist);
		mv.addObject("paging", paging);
		return mv;
	}
	
	@GetMapping("/edu_write.do")
	public ModelAndView getEduInsertForm() {
		return new ModelAndView("admin/education/edu_writeForm");
	}
	// 게시글 작성
	@PostMapping("/edu_insert.do")
	public ModelAndView getEdudInsert(Education_VO evo, HttpServletRequest request,  HttpSession session) {
		ModelAndView mv = new ModelAndView("redirect:/admin_edulist.do");
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			MultipartFile file = evo.getFile();
			// 첨부파일이 무조건 있어야 할 시 if문을 안쓰면 되고, 기본 프로필을 쓸 때는 if문안에 해당 이미지를 넣어주면 됨
			if(file.isEmpty()) {
				evo.setEdu_F_name("");
			}else {
				// 같은이름이 없도록 UUID 사용
				UUID uuid = UUID.randomUUID();
				String f_name = uuid.toString()+ "_" + evo.getFile().getOriginalFilename();
				evo.setEdu_F_name(f_name);
				
				// 이미지 저장
				byte[] in = evo.getFile().getBytes();
				File out = new File(path, f_name);
				FileCopyUtils.copy(in, out);			
			}
			
			// 세션에서 nickname 가져오기
	        String nickname= (String) session.getAttribute("nickname");
	        
	        // 여기서 nickname를 모델에 추가
	        mv.addObject("nickname", nickname);
			int res = edu_Service.getEdudInsert(evo);
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
	  @GetMapping("/edu_onelist.do")
	  public ModelAndView getEduAdminOneList(String edu_idx) {
		  ModelAndView mv = new ModelAndView("admin/education/admin_edu_onelist");
		  Education_VO evo = edu_Service.getEduAdminOneList(edu_idx);
		  mv.addObject("evo", evo);
		  return mv;
	  }
	  
	  // 카테고리 -> 필수교육 
	  @RequestMapping("/edu_Alist.do")
		public ModelAndView getEdu_AList(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("admin/education/admin_edu_Alist");
			int count = edu_Service.getA_TotalCount();
			paging.setTotalRecord(count);
			System.out.println(count);
			
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
			List<Education_VO> e_alist = edu_Service.getEdu_Alist(paging.getOffset(), paging.getNumPerPage());
			mv.addObject("e_alist", e_alist);
			mv.addObject("paging", paging);
			return mv;
		}
	  // 카테고리 -> 양육 
	  @RequestMapping("/edu_Blist.do")
		public ModelAndView getEdu_BList(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("admin/education/admin_edu_Blist");
			int count = edu_Service.getB_TotalCount();
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
			List<Education_VO> e_Blist = edu_Service.getEdu_Blist(paging.getOffset(), paging.getNumPerPage());
			mv.addObject("e_Blist", e_Blist);
			mv.addObject("paging", paging);
			return mv;
		}
	  
	  // 카테고리 -> 훈련
	  @RequestMapping("/edu_Clist.do")
		public ModelAndView getEdu_CList(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("admin/education/admin_edu_Clist");
			int count = edu_Service.getC_TotalCount();
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
			List<Education_VO> e_clist = edu_Service.getEdu_Clist(paging.getOffset(), paging.getNumPerPage());
			mv.addObject("e_clist", e_clist);
			mv.addObject("paging", paging);
			return mv;
		}
	  	// 게시글 수정화면 이동 
		@PostMapping("/edu_UpdateForm.do")
		public ModelAndView getEduUpdateForm(String edu_idx) {
			ModelAndView mv = new ModelAndView("admin/education/edu_update");
			Education_VO evo = edu_Service.getEduAdminOneList(edu_idx);
			mv.addObject("evo", evo);
			return mv;
		}
		// 게시글 수정 등록
		@PostMapping("/edu_update.do")
		public ModelAndView getEdu_Update(Education_VO evo, HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("admin/education/");
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			try {
				MultipartFile f_param = evo.getFile();
				String old_f_name = evo.getOld_f_name();
				
				if(f_param.isEmpty()) {
					evo.setEdu_F_name(old_f_name);
				}else {
					UUID uuid = UUID.randomUUID();
					String f_name = uuid.toString()+"_" + evo.getFile().getOriginalFilename();
					evo.setEdu_F_name(f_name);

					byte[] in = evo.getFile().getBytes();
					File out = new File(path, f_name);
					FileCopyUtils.copy(in, out);
					
				}
				int result = edu_Service.getEdu_Update(evo);
				mv.setViewName("redirect:/edu_onelist.do?edu_idx="+evo.getEdu_idx());
				return mv;
			} catch (Exception e) {
				return null;
		
			}
		}
		// 게시글 삭제
		@PostMapping("/edu_delete.do")
		public ModelAndView getEdu_Delete(Education_VO evo) {
			ModelAndView mv = new ModelAndView("admin/education/edu_delete");	
			int result = edu_Service.getEdu_Delete(evo);

			mv.addObject("result", result);
			mv.addObject("evo", evo);
			return mv;
		}
		
		// 검색
		@RequestMapping("/edu_search.do")
		public ModelAndView getSearch( HttpServletRequest request,
			    @RequestParam(defaultValue = "edu_title") String searchtype,
			    @RequestParam(defaultValue = "") String keyword) {
		    ModelAndView mv = new ModelAndView("admin/education/admin_edu_search"); // 결과를 표시할 뷰 이름
		    int count = edu_Service.getSearchTotalCount(searchtype,keyword);
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
		    
		    
			
			 List<Education_VO> search = edu_Service.getSearch(searchtype, keyword ,paging.getOffset(), paging.getNumPerPage());
		    mv.addObject("search", search);
		    mv.addObject("paging", paging); // 페이징 정보를 뷰에 추가
		    return mv;
		}
		
		@RequestMapping("/edu_Asearch.do")
		public ModelAndView getASearch( HttpServletRequest request,
			    @RequestParam(defaultValue = "edu_title") String searchtype,
			    @RequestParam(defaultValue = "") String keyword) {
		    ModelAndView mv = new ModelAndView("admin/education/admin_edu_Asearch"); // 결과를 표시할 뷰 이름

		    
		    int count = edu_Service.getSearchTotalCount(searchtype,keyword);
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
			 List<Education_VO> search = edu_Service.getASearch(searchtype, keyword ,paging.getOffset(), paging.getNumPerPage());
		    mv.addObject("search", search);
		    mv.addObject("paging", paging); // 페이징 정보를 뷰에 추가
		    return mv;
		}
		
		@RequestMapping("/edu_Bsearch.do")
		public ModelAndView getBSearch( HttpServletRequest request,
			    @RequestParam(defaultValue = "edu_title") String searchtype,
			    @RequestParam(defaultValue = "") String keyword) {
		    ModelAndView mv = new ModelAndView("admin/education/admin_edu_Bsearch"); // 결과를 표시할 뷰 이름
		    
		    int count = edu_Service.getSearchTotalCount(searchtype,keyword);
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
			 List<Education_VO> search = edu_Service.getBSearch(searchtype, keyword ,paging.getOffset(), paging.getNumPerPage());
		    mv.addObject("search", search);
		    mv.addObject("paging", paging); // 페이징 정보를 뷰에 추가
		    return mv;
		}
		
		@RequestMapping("/edu_Csearch.do")
		public ModelAndView getCSearch( HttpServletRequest request,
			    @RequestParam(defaultValue = "edu_title") String searchtype,
			    @RequestParam(defaultValue = "") String keyword) {
		    ModelAndView mv = new ModelAndView("admin/education/admin_edu_Csearch"); // 결과를 표시할 뷰 이름
		    
		    int count = edu_Service.getSearchTotalCount(searchtype,keyword);
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
			 List<Education_VO> search = edu_Service.getCSearch(searchtype, keyword ,paging.getOffset(), paging.getNumPerPage());
		    mv.addObject("search", search);
		    mv.addObject("paging", paging); // 페이징 정보를 뷰에 추가
		    return mv;
		}
		
}


