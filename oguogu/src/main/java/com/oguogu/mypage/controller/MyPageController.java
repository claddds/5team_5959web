package com.oguogu.mypage.controller;


import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	//회원정보 수정창 이동
	@RequestMapping("/userInfoUpdateForm.do")
	public ModelAndView getUserInfoUpdateForm(HttpSession session) {
		ModelAndView mv = new ModelAndView("mypage/mypage_myprofile_update");
		String user_id = (String) session.getAttribute("user_id");
		User_VO uvo = join_Service.getUserOneList(user_id);
//		System.out.println("마이컨트롤러 이름:"+uvo.getUser_id());
//		System.out.println("마이컨트롤러 닉네임:"+uvo.getNickname());
//		System.out.println("마이컨트롤러 이메일:"+uvo.getEmail());
//		System.out.println("마이컨트롤러 파일이름:"+uvo.getUser_fname());
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
			
//			System.out.println("업데이트 컨트롤러 이름:"+uvo.getUser_id());
//			System.out.println("업데이트 컨트롤러 닉네임:"+uvo.getNickname());
//			System.out.println("업데이트 컨트롤러 이메일:"+uvo.getEmail());
//			System.out.println("업데이트 컨트롤러 파일이름:"+uvo.getUser_fname());
//			System.out.println("업데이트 컨트롤러 올드 파일이름:"+uvo.getOld_user_fname());
			
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
		//ModelAndView mv = new ModelAndView("mypage/mypage_myprofile_pwupdate");
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
	
}
