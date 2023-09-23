package com.oguogu.mypage.controller;


import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.mypage.model.service.MyPageService;
import com.oguogu.user.model.service.Join_Service;
import com.oguogu.user.model.vo.User_VO;

@Controller
public class MyPageController {
	
	@Autowired
	MyPageService myPageService;
	
	@Autowired
	Join_Service join_Service;
	
	@RequestMapping("/mypagePetProfile.do")
	public ModelAndView getPetProfile() {
		ModelAndView mv = new ModelAndView("mypage/mypage_petprofile_list_none");
		return mv;
	}
	
	@RequestMapping("/userInfoUpdateForm.do")
	public ModelAndView getUserInfoUpdateForm(@RequestParam("user_id") String user_id) {
		ModelAndView mv = new ModelAndView("mypage/mypage_myprofile_update");
		User_VO uvo = join_Service.getUserOneList(user_id);
		mv.addObject("uvo", uvo);
		return mv;
	}
	
	@RequestMapping("/updateMyInfo.do")
	public String getUpdateMyInfo(User_VO uvo,HttpSession session) {
		String path = session.getServletContext().getRealPath("/resources/images");
		String user_id = (String) session.getAttribute("user_id");
		try {

			MultipartFile file = uvo.getFile();

			if (file.isEmpty()) {
				uvo.setUser_fname("");
			} else {
				// 파라미터로 받은 file을 이용해서 DB에 저장할 f_name을 채워주자
				// 그러나 같은 이름의 파일이름이면 파일을 변경해야 되므로 UUID를 이용해서 변경하자
				// DB에 저장할 이름을 변경하자
				UUID uuid = UUID.randomUUID();
				String user_fname = uuid.toString() + "_" + uvo.getFile().getOriginalFilename();// 디비에 저장할 이름이 f_name

				System.out.println(uvo.getFile());
				uvo.setUser_id(user_id);
				uvo.setUser_fname(user_fname);
				// 이미지 /resources/images 저장하기
				byte[] in = uvo.getFile().getBytes();
				File out = new File(path, user_fname); // 상위폴더(/resources/images) 안에 f_name이 붙음
				FileCopyUtils.copy(in, out);
			}
			
			// DB에 저장하기
			int result = myPageService.getUpdateMyInfo(uvo);
			
			//업데이트 하고 유저 정보 얻어오기
			User_VO updateUserVO = join_Service.getUserOneList(uvo.getUser_id());
			
			session.setAttribute("nickname", updateUserVO.getNickname());
			session.setAttribute("user_fname", updateUserVO.getUser_fname());
			
			if (result > 0) {
				return "redirect:/mypagePetProfile.do";
			} else {
				return null;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	
}
