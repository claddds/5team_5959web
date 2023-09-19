package com.oguogu.education.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.common.EduPaging;
import com.oguogu.education.model.service.Edu_UserService;
import com.oguogu.education.model.vo.EduHeart_VO;
import com.oguogu.education.model.vo.Education_VO;

@Controller
public class Edu_UserController {

	@Autowired
	Edu_UserService edu_UserService;
	@Autowired
	EduPaging paging;
	
	// 상단 메뉴에서 교육정보를 누르면 전체 교육정보 페이지로 이동
	@GetMapping("/alledudisplay.do")
	public ModelAndView getAllEduDisplay() {
		ModelAndView mv = new ModelAndView("education/edu_list");

		try {
			
			List<Education_VO> Elist = edu_UserService.getElist();
			mv.addObject("Elist", Elist);
			List<Education_VO> Blist = edu_UserService.getBlist();
			mv.addObject("Blist", Blist);
			List<Education_VO> Tlist = edu_UserService.getTlist();
			mv.addObject("Tlist", Tlist);
			
			return mv;
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("error");
		}
		
	}
	
	// 상단 메뉴에서 필수정보를 누르면 필수정보 페이지로 이동(기본 강아지)
	@GetMapping("/essentialdisplayDog.do")
	public ModelAndView getDogEssentialDisplay(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("education/edu_essential_Doglist");
		
		try {
			int count = edu_UserService.getDogListCount();
			paging.setTotalRecord(count);
			
			if (paging.getTotalRecord() <= paging.getNumPerPage()) {
				paging.setTotalPage(1);
				// 게시글의 수가 페이지당 게시물수보다 작으면 페이지는 1개
			} else {
				paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
				if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
					paging.setTotalPage(paging.getTotalPage() + 1);
				}
			}
			
			// 현재 페이지 구하기
			String Page = request.getParameter("page");
			if (Page == null) {
				paging.setNowPage(1);
			} else {
				paging.setNowPage(Integer.parseInt(Page));
			}
			
			paging.setOffset(paging.getNumPerPage() * (paging.getNowPage() - 1));
			
			// ** 현재 페이지의 시작 블록과 끝 블록 구하자
			paging.setBeginBlock(
					(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
			paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);
			
			
			if (paging.getEndBlock() > paging.getTotalPage()) {
				paging.setEndBlock(paging.getTotalPage());
			}
			
			List<Education_VO> DogElist = edu_UserService.getDogElist(paging.getOffset(), paging.getNumPerPage());
			mv.addObject("DogElist", DogElist);
			mv.addObject("paging",paging);
			return mv;
			
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("error");
		}
		
	}
	
	// 상단 메뉴에서 필수정보를 누르면 필수정보 페이지로 이동(고양이)
	@GetMapping("/essentialdisplayCat.do")
	public ModelAndView getCatEssentialDisplay(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("education/edu_essential_Catlist");
		
		try {
			int count = edu_UserService.getCatListCount();
			paging.setTotalRecord(count);
			
			if (paging.getTotalRecord() <= paging.getNumPerPage()) {
				paging.setTotalPage(1);
				// 게시글의 수가 페이지당 게시물수보다 작으면 페이지는 1개
			} else {
				paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
				if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
					paging.setTotalPage(paging.getTotalPage() + 1);
				}
			}
			
			// 현재 페이지 구하기
			String Page = request.getParameter("page");
			if (Page == null) {
				paging.setNowPage(1);
			} else {
				paging.setNowPage(Integer.parseInt(Page));
			}
			
			paging.setOffset(paging.getNumPerPage() * (paging.getNowPage() - 1));
			
			
			// **  현재 페이지의 시작 블록과 끝 블록 구하자
			paging.setBeginBlock(
					(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
			paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);
			
			if (paging.getEndBlock() > paging.getTotalPage()) {
				paging.setEndBlock(paging.getTotalPage());
			}
			
			List<Education_VO> CatElist = edu_UserService.getCatElist(paging.getOffset(), paging.getNumPerPage());
			mv.addObject("CatElist", CatElist);
			mv.addObject("paging",paging);
			return mv;
			
		} catch (Exception e) {
			e.printStackTrace();
			return new ModelAndView("error");
		}
		
	}
	
	
	
	@RequestMapping("/essentialOneListDog.do")
	public String getDogOneList(HttpServletRequest request, HttpServletResponse response, Education_VO dog_evo, HttpSession session, Model model) throws Exception {
		
		try {
			
			// 1. 좋아요 기능 구현
			// 새로운 객체를 만들어 ehvo에 에듀 게시판 번호와 닉네임을 저장한다.
			EduHeart_VO ehVo = new EduHeart_VO();
			ehVo.setEdu_idx(dog_evo.getEdu_idx()); // 에듀 게시판 번호 저장
			ehVo.setNickname((String) session.getAttribute("nickname")); // 닉네임 저장
			EduHeart_VO resultEhVo = edu_UserService.getHeartOnelist(ehVo);
			
			
			if (resultEhVo == null) {
				resultEhVo = new EduHeart_VO();
				resultEhVo.setEdu_idx(dog_evo.getEdu_idx());
				resultEhVo.setHeart("0"); // 초기값 설정
				model.addAttribute("heartvo", resultEhVo);
			} else {
				resultEhVo.setEdu_idx(dog_evo.getEdu_idx());
				model.addAttribute("heartvo", resultEhVo);
			}
			
			// 2. 상세조회
			String page = request.getParameter("page"); // 페이지 저장
			
			String eduIdx = dog_evo.getEdu_idx();
			
			// 클라이언트 쿠키에서 조회한 게시물 ID를 가져옴
			Cookie[] cookies = request.getCookies();
			boolean alreadyViewed = false;
			
			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("viewed_post_" + eduIdx)) {
						alreadyViewed = true;
						break;
					}
				}
			}
			
			// 게시물을 이미 조회한 경우 조회수를 증가시키지 않음
			if (!alreadyViewed) {
				int res = edu_UserService.getHitUpdate(eduIdx); // 조회수 1 증가
				
				// 클라이언트 쿠키에 조회한 게시물 ID를 추가
				Cookie viewedCookie = new Cookie("viewed_post_" + eduIdx, "1");
				viewedCookie.setMaxAge(60 * 60 * 24); // 쿠키 유효 기간 (예: 1일)
				viewedCookie.setPath("/"); // 쿠키 경로 설정
				response.addCookie(viewedCookie);
			}
			
			int heartcount = edu_UserService.getHeartCount(dog_evo.getEdu_idx());
			Education_VO evo = edu_UserService.getDogOneList(dog_evo.getEdu_idx()); // 상세보기
			
			// 3. 좋아요 정보/페이지 정보/상세조회 정보 저장
			model.addAttribute("page", page);
			model.addAttribute("evo", evo);
			model.addAttribute("heartcount", heartcount);
			
			String referer = request.getHeader("Referer");
			session.setAttribute("referer", referer);
			
			return "education/edu_onelist";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		
	}
	
	@RequestMapping("/heartChk.do")
	@ResponseBody
	public int getHeartChk(@ModelAttribute EduHeart_VO EheartVO, HttpSession session) throws Exception{
		
		int result = -1;
		String nickname = (String) session.getAttribute("nickname");
		if(nickname == null) {
			return result;
		}
		
		EduHeart_VO findHeart = edu_UserService.getHeartOnelist(EheartVO);
		
		if(findHeart == null) {
			result = edu_UserService.getHeartInsert(EheartVO);
		}else {
			edu_UserService.getHeartDelete(EheartVO);
			result = 0;
		}
		
		System.out.println("하트 체크:"+result);
		return result;
	}
	
	@RequestMapping("/heartCount.do")
	@ResponseBody
	public int  getHeartCount(Education_VO dog_evo) throws Exception{
		int heartcount = edu_UserService.getHeartCount(dog_evo.getEdu_idx());
		return heartcount;
	}
}
