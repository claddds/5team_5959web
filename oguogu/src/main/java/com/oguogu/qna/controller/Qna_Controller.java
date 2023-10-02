package com.oguogu.qna.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.oguogu.comment.model.service.QnAComment_Service;
import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.comment.model.vo.QnAComment_VO;
import com.oguogu.common.Paging;
import com.oguogu.lounge.model.vo.Lounge_VO;
import com.oguogu.qna.model.service.Qna_Service;
import com.oguogu.qna.model.vo.Qna_VO;
import com.oguogu.user.model.service.Join_Service;
import com.oguogu.user.model.vo.User_VO;

@Controller
public class Qna_Controller {

	@Autowired
	private Qna_Service qna_Service;
	
	@Autowired
	private QnAComment_Service qnaComment_Service;
	
	@Autowired
	private Join_Service join_Service;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private Paging paging;
	
	// qna�뒗 �쑀���쓽 1:1 臾몄쓽 寃뚯떆�뙋
	@RequestMapping("/userqna_list.do")
	public ModelAndView qnaList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("qna/qna_list");
		// �럹�씠吏�
		// �쟾泥� 寃뚯떆臾쇱쓽 �닔
		int count = qna_Service.getTotalCount();
		paging.setTotalRecord(count);

		// �쟾泥� �럹�씠吏��쓽 �닔
		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		} else {
			paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() + 1);
			}
		}
		// �쁽�옱 �럹�씠吏�
		String cPage = request.getParameter("cPage");
		if (cPage == null) {
			paging.setNowPage(1);
		} else {
			paging.setNowPage(Integer.parseInt(cPage));
		}
		paging.setOffset(paging.getNumPerPage() * (paging.getNowPage() - 1));

		// �떆�옉釉붾줉怨� �걹釉붾줉 援ы븯湲�
		paging.setBeginBlock(
				(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);

		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

		// 二쇱쓽�궗�빆
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
	public ModelAndView qnaInsert(Qna_VO qvo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:/qna_list.do");
		String path = request.getSession().getServletContext().getRealPath("/resources/images");
		try {
			MultipartFile file = qvo.getFile();
			if (file.isEmpty()) {
				qvo.setOne_fname("");
			} else {
				// 媛숈� �씠由꾩쓽 �뙆�씪 �뾾�룄濡� UUID �궗�슜
				UUID uuid = UUID.randomUUID();
				String one_fname = uuid.toString() + "_" + qvo.getFile().getOriginalFilename();
				qvo.setOne_fname(one_fname);
				// �씠誘몄� ���옣
				byte[] in = qvo.getFile().getBytes();
				File out = new File(path, one_fname);
				FileCopyUtils.copy(in, out);
			}
			// �뙣�뒪�썙�뱶 �븫�샇�솕
			qvo.setOne_pwd(passwordEncoder.encode(qvo.getOne_pwd()));
			// DB�뿉 ���옣�븯湲�
			int res = qna_Service.getInsert(qvo);
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
	// �긽�꽭蹂닿린
		@GetMapping("/qna_onelist.do")
		public String qnaOneList(HttpServletRequest request, HttpSession session, RedirectAttributes rttr,Model model) {
			session.removeAttribute("qna_onelist");
			String one_idx = request.getParameter("one_idx");
			String cPage = request.getParameter("cPage");
			String user_id = (String) session.getAttribute("user_id");
			
			// �긽�꽭蹂닿린
			Qna_VO qvo = qna_Service.getOneList(one_idx);
			User_VO uvo = join_Service.getUserOneList(user_id);
			
			// �뙎湲� 媛��졇�삤湲�
			List<QnAComment_VO> c_list = qnaComment_Service.getQnACommList(one_idx);
			
			System.out.println("濡쒓렇�씤 �븳 �븘�씠�뵒 : " + user_id);
			String db_id = qvo.getUser_id();
			System.out.println("�뵒鍮꾩뿉 ���옣�맂 �븘�씠�뵒 : " +db_id);
		
			model.addAttribute("c_list", c_list);
			model.addAttribute("qvo", qvo);
			model.addAttribute("cPage", cPage);
			
			String userType = uvo.getType();
			
			if(!db_id.equals(user_id) && !userType.equals("0")){
				rttr.addFlashAttribute("qna_onelist", "no");
	         	return "redirect:/qna_list.do"; 
	         }else {
	        	 model.addAttribute("cPage", cPage);
	         	return "qna/qna_onelist";
	         }
		}	
		
		// �닔�젙
		@PostMapping("/qna_updateForm.do")
		public ModelAndView qnaUpdateForm(@ModelAttribute("cPate") String cPage, @ModelAttribute("one_idx") String one_idx) {
			ModelAndView mv = new ModelAndView("qna/qna_update");
			Qna_VO qvo = qna_Service.getOneList(one_idx);
			mv.addObject("qvo", qvo);
			return mv;
		}
		
		// 寃뚯떆湲� �닔�젙 �벑濡�
	    @PostMapping("/qna_update.do")
	    public ModelAndView getUpdate(Qna_VO qvo, HttpServletRequest request) {
	        ModelAndView mv = new ModelAndView("qna/");
	        String path = request.getSession().getServletContext().getRealPath("/resources/images");
	        try {
	            MultipartFile file = qvo.getFile();
	            String one_old_fname = qvo.getOne_old_fname();

	            if (file.isEmpty()) {
	            	qvo.setOne_old_fname(one_old_fname);
	            } else {
	                UUID uuid = UUID.randomUUID();
	                String one_fname = uuid.toString() + "" + qvo.getFile().getOriginalFilename();
	                qvo.setOne_fname(one_fname);

	                byte[] in = qvo.getFile().getBytes();
	                File out = new File(path, one_fname);
	                FileCopyUtils.copy(in, out);

	            }
	            int result = qna_Service.getUpdate(qvo);
	            mv.setViewName("redirect:/qna_onelist.do?one_idx=" + qvo.getOne_idx());
	            return mv;
	        } catch (Exception e) {
	            return null;
	        }
	    }
		// �궘�젣
		@PostMapping("/qna_deleteForm.do")
		public ModelAndView deleteForm(@ModelAttribute("cPage") String cPage, @ModelAttribute("one_idx") String one_idx) {
			ModelAndView mv = new ModelAndView("qna/qna_delete");
			return mv;
		}

		@PostMapping("/qna_delete.do")
		public String qnaDelete(@RequestParam("one_pwd") String one_pwd, @RequestParam("cPage") String cPage, RedirectAttributes rttr,
				@ModelAttribute("one_idx") String one_idx, Model model) {
			// 鍮꾨�踰덊샇媛� 留욌뒗吏� 泥댄겕 �븯�옄.
			// DB�뿉�꽌 �븫�샇 �뼸湲�
			Qna_VO qvo = qna_Service.getOneList(one_idx);
			String dbpwd = qvo.getOne_pwd();
			System.out.println(one_pwd);
			// passwordEncoder.matches(�븫�샇�솕�릺吏� �븡��寃�, �븫�샇�솕 �맂寃� )
			if (!passwordEncoder.matches(one_pwd, dbpwd)) {
				model.addAttribute("pwchk", "fail");  
				return "qna/qna_delete";
			} else {
				// �썝湲��궘�젣 �떆 �긽�깭媛믪쓣 0 => 1 濡� 蹂�寃� �떆�궎�옄
				int result = qna_Service.getDelete(one_idx);
				rttr.addFlashAttribute("cPage", cPage);
				rttr.addAttribute("del_alert","ok");
				return "redirect:/qna_list.do";
			}
		}
		
		@PostMapping("/qnacom_insert.do")
		public ModelAndView commInsert(QnAComment_VO qcvo, @ModelAttribute("cPage") String cPage,
				@ModelAttribute("one_idx") String one_idx) {
			ModelAndView mv = new ModelAndView("qna/");
			int result = qna_Service.getQnACommInsert(qcvo);
			mv.setViewName("redirect:/qna_onelist.do?qnacom_idx=" + qcvo.getQnacom_idx());
			if (result > 0) {
				return mv;
			} else {
				return null;
			}
		}
	
		@PostMapping("/qnacom_delete.do")
		public ModelAndView commentDelete(@RequestParam("qnacom_idx") String qnacom_idx, @ModelAttribute("cPage") String cPage,
				@ModelAttribute("one_idx") String one_idx) {
			ModelAndView mv = new ModelAndView("redirect:/qna_onelist.do");
			int result = qna_Service.getQnACommDelete(qnacom_idx);
			return mv;
		}
}	

