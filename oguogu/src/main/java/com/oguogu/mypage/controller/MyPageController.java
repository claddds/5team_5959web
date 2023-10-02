package com.oguogu.mypage.controller;


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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oguogu.common.EduPaging;
import com.oguogu.common.Paging;
import com.oguogu.education.model.vo.Education_VO;
import com.oguogu.lounge.model.vo.Lounge_VO;
import com.oguogu.mypage.model.service.MyPageService;
import com.oguogu.user.model.service.Join_Service;
import com.oguogu.user.model.vo.User_VO;

@Controller
public class MyPageController {
	
	@Autowired
	private MyPageService myPageService;
	
	@Autowired
	private Join_Service join_Service;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	Paging paging;
	
	//회원정보 수정창 이동
	@RequestMapping("/userInfoUpdateForm.do")
	public ModelAndView getUserInfoUpdateForm(HttpSession session) {
		ModelAndView mv = new ModelAndView("mypage/mypage_myprofile_update");
		String user_id = (String) session.getAttribute("user_id");
		User_VO uvo = join_Service.getUserOneList(user_id);
		mv.addObject("uvo", uvo);
		return mv;
	}
	
	//회원 정보 수정
	@RequestMapping("/updateMyInfo.do")
	public ModelAndView getUpdateMyInfo(User_VO uvo,HttpServletRequest request, RedirectAttributes redirectAttributes) {
		
		ModelAndView mv = new ModelAndView();
		
		String user_id = (String) request.getSession().getAttribute("user_id");
		uvo.setUser_id(user_id);
		
		
		String path = request.getSession().getServletContext().getRealPath("/resources/images");
		
		try {
			MultipartFile f_param = uvo.getFile();
			String old_user_fname = uvo.getOld_user_fname();
			
			if(f_param.isEmpty()) {
				//파일이 없으면 
				uvo.setUser_fname(old_user_fname);
			}else {
				//파일이 없으면 기본사진 설정
				if(old_user_fname == "/login/basic_profile.png") {
					String user_fname = uvo.getFile().getOriginalFilename();
					uvo.setUser_fname(user_fname);
					
					// 이미지 /resources/images 저장하기
					byte[] in = uvo.getFile().getBytes();
					File out = new File(path, user_fname); //상위폴더(/resources/images) 안에 f_name이 붙음
					FileCopyUtils.copy(in, out);
				}else {
				//파일이 있으면 새로운 사진으로 설정 
					UUID uuid = UUID.randomUUID();
					String user_fname = uuid.toString()+"_"+uvo.getFile().getOriginalFilename();// 디비에 저장할 이름이 f_name					
					uvo.setUser_fname(user_fname);
					
					// 이미지 /resources/images 저장하기
					byte[] in = uvo.getFile().getBytes();
					File out = new File(path, user_fname); //상위폴더(/resources/images) 안에 f_name이 붙음
					FileCopyUtils.copy(in, out);					
				}
				
			}

			int result = myPageService.getUpdateMyInfo(uvo);
			mv.setViewName("redirect:/mypagedisplay.do");
			redirectAttributes.addFlashAttribute("updateOk","success");
			return mv;
		} catch (Exception e) {
			return null;
		}
	}
	
	//비밀번호 수정창 이동
	@RequestMapping("/userPwUpdateForm.do")
	public ModelAndView getuserPwUpdateForm() {
		ModelAndView mv = new ModelAndView("mypage/mypage_myprofile_pwupdate");
		return mv;
	}
	
	// 비밀번호 수정창 - 현재 비밀번호 입력 db랑 일치 여부 체크
	@RequestMapping("/userPwChk.do")
	@ResponseBody
	public int getuserPwUpdate(HttpSession session,@RequestParam("pw") String pw) {
		String user_id = (String) session.getAttribute("user_id");
		String dbPw = join_Service.getMemberPwd(user_id);
		
		if(!passwordEncoder.matches(pw, dbPw)) {
			return 0;
			//비밀번호 불일치
		}else {
			return 1;
			//비밀번호 일치
		}
	}
	
	//비밀번호 업데이트
	@RequestMapping("/pwupdate.do")
	@ResponseBody
	public int getPwUpdate(HttpSession session, @RequestParam("pw") String pw, RedirectAttributes redirectAttributes) {
		String user_id = (String) session.getAttribute("user_id");//유저 아이디 구함
		String password = passwordEncoder.encode(pw); //비밀번호 암호화
		int result = myPageService.getPwUpdate(user_id, password);//비밀번호 업데이트
		return result;
	}
	
	//회원 탈퇴
	@RequestMapping("/removeUser.do")
	@ResponseBody
	public int getRemoveUser (HttpSession session) {
		String user_id = (String) session.getAttribute("user_id");//유저 아이디 구함
		int result = myPageService.getRemoveUser(user_id);
		System.out.println(result);
		session.invalidate();
		return result;
	}
	
	//좋아요(즐겨찾기) 리스트 불러오기
	@RequestMapping("/myfavedu.do")
	public ModelAndView getMyEduFavHeart(HttpSession session, Education_VO evo) {
		ModelAndView mv = new ModelAndView();
		String nickname = (String) session.getAttribute("nickname");
		
		//좋아요 있는지 없는지 구하기
		int result = myPageService.getMyEduFavHeart(nickname);
		
		if(result>0) {
			List<Education_VO> elist = myPageService.getMyFavEdu(nickname);
			mv.addObject("elist", elist);
			mv.setViewName("mypage/mypage_fav_edu");
		}else {
			mv.setViewName("mypage/mypage_fav_edu_none");
		}
		
		return mv;
	}
	
	//내가 쓴 글 목록 불러오기
	@RequestMapping("/myWriteLounge.do")
	public String getmyWriteLounge(HttpSession session, Model model, HttpServletRequest request) {
		String user_id = (String) session.getAttribute("user_id");
		
		//작성한글 있는지 없는지 조회
		int result = myPageService.getmyWriteFind(user_id);
		
		if(result>0) {
			//작성글이 있으면
			
			// 전체 게시물 수 조회
			paging.setTotalRecord(result);
			
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
			
			List<Lounge_VO> loungelist = myPageService.getmyWriteLounge(user_id,paging.getOffset(), paging.getNumPerPage());
			
			for (Lounge_VO lvo : loungelist) {
				int comment_cnt = myPageService.getCommentCount(lvo.getLo_idx());
				lvo.setComment_cnt(String.valueOf(comment_cnt));
			}
			
			model.addAttribute("loungelist", loungelist);
			model.addAttribute("paging", paging);
			return "mypage/mypage_mywrite_lounge";
		}else {
			return "mypage/mypage_mywrite_lounge_none";
		}
	}
	
	@RequestMapping("/myWriteComment.do")
	public String getmyWriteComment(HttpSession session, Model model, HttpServletRequest request) {
			String user_id = (String) session.getAttribute("user_id");
			
			//작성한글 있는지 없는지 조회
			int result = myPageService.getmyCommFind(user_id);
			
			if(result>0) {
				//작성글이 있으면
				
				// 전체 게시물 수 조회
				paging.setTotalRecord(result);
				
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
				
				List<Lounge_VO> commentlist = myPageService.getmyComment(user_id,paging.getOffset(), paging.getNumPerPage());
				
				
				model.addAttribute("commentlist", commentlist);
				model.addAttribute("paging", paging);
				return "mypage/mypage_mywrite_comment";
			}else {
				return "mypage/mypage_mywrite_comment_none";
			}
	}
	
	
	
}
