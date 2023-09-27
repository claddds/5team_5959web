package com.oguogu.food.controller;

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
import com.oguogu.faq.model.vo.FAQ_VO;
import com.oguogu.food.model.service.Ad_Food_Service;
import com.oguogu.food.model.vo.Food_VO;

@Controller
public class Admin_Food_Controller {
	@Autowired
	private Ad_Food_Service ad_Food_Service;

	@Autowired
	private Paging paging;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@RequestMapping("/ad_food_list.do")
	public ModelAndView getAd_Food_List(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin/food/admin_food_list");
		int count = ad_Food_Service.getTotalCount();
		paging.setTotalRecord(count);

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
		List<Food_VO> ad_flist = ad_Food_Service.getAd_Food_List(paging.getOffset(), paging.getNumPerPage());
		mv.addObject("ad_flist", ad_flist);
		mv.addObject("paging", paging);
		return mv;
	}

	@GetMapping("/food_write.do")
	public ModelAndView getFoodInsertForm() {
		return new ModelAndView("admin/food/food_writeForm");
	}

	// 게시글 작성
	@PostMapping("/food_insert.do")
	public ModelAndView getFoodInsert(Food_VO ad_f_vo, HttpServletRequest request, HttpSession session) {

		ModelAndView mv = new ModelAndView("redirect:/ad_food_list.do");

		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/images");
			MultipartFile file = ad_f_vo.getFile();
			// 첨부파일이 무조건 있어야 할 시 if문을 안쓰면 되고, 기본 프로필을 쓸 때는 if문안에 해당 이미지를 넣어주면 됨
			if (file.isEmpty()) {
				ad_f_vo.setFd_fname("");
			} else {
				// 같은이름이 없도록 UUID 사용
				UUID uuid = UUID.randomUUID();
				String f_name = uuid.toString() + "_" + ad_f_vo.getFile().getOriginalFilename();
				ad_f_vo.setFd_fname(f_name);

				// 이미지 저장
				byte[] in = ad_f_vo.getFile().getBytes();
				File out = new File(path, f_name);
				FileCopyUtils.copy(in, out);
			}
			// 세션에서 nickname 가져오기
			String nickname = (String) session.getAttribute("nickname");

			// 여기서 nickname를 모델에 추가
			mv.addObject("nickname", nickname);

			int res = ad_Food_Service.getFoodInsert(ad_f_vo);
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

	// 게시글 상세보기
	@GetMapping("/ad_food_onelist.do")
	public ModelAndView getFoodAdminOneList(String fd_idx) {
		ModelAndView mv = new ModelAndView("admin/food/admin_food_onelist");
		Food_VO ad_f_vo = ad_Food_Service.getFoodAdminOneList(fd_idx);
		mv.addObject("ad_f_vo", ad_f_vo);
		return mv;
	}

	// 게시글 수정화면 이동
	@PostMapping("/food_UpdateForm.do")
	public ModelAndView getFoodUpdateForm(String fd_idx) {
		ModelAndView mv = new ModelAndView("admin/food/food_update");
		Food_VO ad_f_vo = ad_Food_Service.getFoodAdminOneList(fd_idx);
		mv.addObject("ad_f_vo", ad_f_vo);
		return mv;
	}

	// 게시글 수정 등록
	@PostMapping("/food_update.do")
	public ModelAndView getFood_Update(Food_VO ad_f_vo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin/food/");
		String path = request.getSession().getServletContext().getRealPath("/resources/images");
		try {
			MultipartFile f_param = ad_f_vo.getFile();
			String old_f_name = ad_f_vo.getOld_f_name();

			if (f_param.isEmpty()) {
				ad_f_vo.setFd_fname(old_f_name);
			} else {
				UUID uuid = UUID.randomUUID();
				String f_name = uuid.toString() + "_" + ad_f_vo.getFile().getOriginalFilename();
				ad_f_vo.setFd_fname(f_name);

				byte[] in = ad_f_vo.getFile().getBytes();
				File out = new File(path, f_name);
				FileCopyUtils.copy(in, out);

			}
			int result = ad_Food_Service.getFood_Update(ad_f_vo);
			mv.setViewName("redirect:/ad_food_onelist.do?fd_idx=" + ad_f_vo.getFd_idx());
			return mv;
		} catch (Exception e) {
			return null;
		}

	}

	// 게시글 삭제
	@PostMapping("/food_delete.do")
	public ModelAndView getFood_Delete(Food_VO ad_f_vo) {
		ModelAndView mv = new ModelAndView("admin/food/food_delete");
		int result = ad_Food_Service.getFood_Delete(ad_f_vo);

		mv.addObject("result", result);
		mv.addObject("ad_f_vo", ad_f_vo);
		return mv;
	}

	// 검색
	@RequestMapping("/food_search.do")
	public ModelAndView getSearch(HttpServletRequest request,
			@RequestParam(defaultValue = "faq_title") String searchtype,
			@RequestParam(defaultValue = "") String keyword) {
		ModelAndView mv = new ModelAndView("admin/food/admin_food_search"); // 결과를 표시할 뷰 이름

		int count = ad_Food_Service.getSearchTotalCount(searchtype, keyword);
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
		List<Food_VO> search = ad_Food_Service.getSearch(searchtype, keyword, paging.getOffset(), paging.getNumPerPage());
		mv.addObject("search", search);
		mv.addObject("paging", paging); // 페이징 정보를 뷰에 추가
		return mv;
	}

}
