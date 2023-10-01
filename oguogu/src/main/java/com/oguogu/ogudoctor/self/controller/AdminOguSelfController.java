package com.oguogu.ogudoctor.self.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.common.Paging;
import com.oguogu.ogudoctor.self.model.service.AdminOgu_Dic_Service;
import com.oguogu.ogudoctor.self.model.service.AdminOgu_Self_Service;
import com.oguogu.ogudoctor.self.model.service.Ogu_Self_Service;
import com.oguogu.ogudoctor.self.model.vo.Admin_OguDictionary_VO;
import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;

@Controller
public class AdminOguSelfController {
	@Autowired
	private AdminOgu_Self_Service adminOgu_Self_Service;
	@Autowired
	private AdminOgu_Dic_Service adminOgu_Dic_Service;
	@Autowired
	private Paging paging;
    
    // 사이드바에서 질병 체크 리스트를 누르면 체크리스트의 리스트가 나옴
    @RequestMapping("/goadmindiseaselist.do")
    public ModelAndView getGoAdminDiseaseList(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("admin/ogudoctor/self/disease_list");
        // 필요한 데이터를 모델에 추가할 수 있음
        // 전체 게시물의 수
     	int count = adminOgu_Self_Service.getTotalCount();
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

     	// begin, end 대신 limit, offset
     	// limit = paging.getNumPerPage()

     	// offset = limit * (현재페이지-1);
     	paging.setOffset(paging.getNumPerPage() * (paging.getNowPage() - 1));

     	// 시작블록과 끝블록 구하기
     	paging.setBeginBlock(
     		(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);

     	paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

     	// 주의사항(endblock이 totalpage보다 클 때가 있다)
     	if (paging.getEndBlock() > paging.getTotalPage()) {
     		paging.setEndBlock(paging.getTotalPage());
     	}

     	List<Ogu_Self_VO> disease_list = adminOgu_Self_Service.getList(paging.getOffset(), paging.getNumPerPage());
     	mv.addObject("disease_list", disease_list);
     	mv.addObject("paging", paging);
        return mv;
    }
    
    // 사이드바에서 질병 사전 리스트를 누르면 질병리스트의 리스트가 나옴
    @RequestMapping("/goadmindiseasedictionary.do")
    public ModelAndView getGoAdminDiseaseDictionary(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("admin/ogudoctor/self/disease_dictionary_list");
        // 필요한 데이터를 모델에 추가할 수 있음
        // 전체 게시물의 수
     	int count = adminOgu_Dic_Service.getTotalCount();
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

     	// begin, end 대신 limit, offset
     	// limit = paging.getNumPerPage()

     	// offset = limit * (현재페이지-1);
     	paging.setOffset(paging.getNumPerPage() * (paging.getNowPage() - 1));

     	// 시작블록과 끝블록 구하기
     	paging.setBeginBlock(
     		(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);

     	paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

     	// 주의사항(endblock이 totalpage보다 클 때가 있다)
     	if (paging.getEndBlock() > paging.getTotalPage()) {
     		paging.setEndBlock(paging.getTotalPage());
     	}

     	List<Admin_OguDictionary_VO> dictionary_list = adminOgu_Dic_Service.getList(paging.getOffset(), paging.getNumPerPage());
     	mv.addObject("dictionary_list", dictionary_list);
     	mv.addObject("paging", paging);
        return mv;
    }
    
    // 추가하기 버튼을 누르면 질병체크리스트 추가 폼이 나옴
    @RequestMapping("/disease_insertForm.do")
    public ModelAndView getDiseaseInsertForm() {
        ModelAndView mv = new ModelAndView("admin/ogudoctor/self/disease_form");
        // 필요한 데이터를 모델에 추가할 수 있음
        return mv;
    }
    
    // 저장버튼을 누르면 db에 저장된다.
    @PostMapping("/disease_insert.do")
	public ModelAndView getDiseaseInsert(
			@RequestParam("animal") String animal,
			@RequestParam("sym_cate") String sym_cate,
			@RequestParam("sym_check") String sym_check,
			@RequestParam("period_line") String period_line,
			@RequestParam("content") String content,
			Ogu_Self_VO oguselfvo, 
			HttpServletRequest request, 
			HttpSession session){
		ModelAndView mv = new ModelAndView("redirect:/goadmindiseaselist.do");
		
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			MultipartFile file = oguselfvo.getFile();
			
			if (file.isEmpty()) {
				oguselfvo.setDis_info_img("");
			} else {
				// 같은이름 없도록 UUID사용
				UUID uuid = UUID.randomUUID();
				String f_name = uuid.toString() + "_" + oguselfvo.getFile().getOriginalFilename();
				oguselfvo.setDis_info_img(f_name);

				// 이미지 저장
				byte[] in = oguselfvo.getFile().getBytes();
				File out = new File(path, f_name);
				FileCopyUtils.copy(in, out);
			}
			
			// 세션에서 nickname 가져오기
			String nickname = (String)session.getAttribute("nickname");
			
			oguselfvo.setPet_kind(animal);
			oguselfvo.setBody_part(sym_cate);
			oguselfvo.setSym_chk(sym_check);
			oguselfvo.setPeriod_line(period_line);
			oguselfvo.setDis_info(content);
			oguselfvo.setAdmin_nickname(nickname);

			int res = adminOgu_Self_Service.getDiseaseInsert(oguselfvo);
			
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
    
    @RequestMapping("/disease_deleteForm.do")
	public ModelAndView deleteForm(
			@RequestParam("cPage") String cPage, 
			@RequestParam("ogu_idx") String ogu_idx) {
		return new ModelAndView("admin/ogudoctor/self/disease_delete");
	}
    
    @RequestMapping("/disease_delete.do")
	public ModelAndView getDiseaseStatus(
			@RequestParam("cPage") String cPage,
			@RequestParam("ogu_idx") String ogu_idx) {
		ModelAndView mv = new ModelAndView();
		
		int result = adminOgu_Self_Service.getDelete(ogu_idx);
		mv.setViewName("redirect:/goadmindiseasedictionary.do");
		return mv;
	}

}
