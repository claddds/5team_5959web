package com.oguogu.pet.controller;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.pet.model.service.Pet_Service;
import com.oguogu.pet.model.vo.Pet_VO;

@Controller
public class Pet_Controller {
	
	@Autowired
	Pet_Service pet_Service;
	
	
	//펫 프로필 불러오기
	@RequestMapping("/mypagePetProfile.do")
	public ModelAndView getPetProfile(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String user_id = (String) session.getAttribute("user_id");
		
		//count(*)으로 숫자 조회
		int result = pet_Service.getPetProfile(user_id);
				
		if(result>0) {
			mv.setViewName("mypage/mypage_petprofile_list");
			// 펫 프로필 있을 때
		}else {
			mv.setViewName("mypage/mypage_petprofile_list_none");
			// 펫 프로필 없을 때
		}
		return mv;
	}
	
	@RequestMapping("/petRegGoForm.do")
	public ModelAndView getPetRegGoForm() {
		return new ModelAndView("mypage/mypage_petprofile_write");
	}
	
	@RequestMapping("/petReg.do")
	public ModelAndView getPetReg(Pet_VO pvo, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		try {
			String path = session.getServletContext().getRealPath("resources/images");
			String user_id = (String) session.getAttribute("user_id");
			MultipartFile file = pvo.getFile();
			if(file.isEmpty()) {
				pvo.setPet_fname("");
			}else {
				UUID uuid = UUID.randomUUID(); // 같은 이름의 파일 없도록 UUID 사용
				String pet_fname = uuid.toString() + "_" + file.getOriginalFilename();
				pvo.setPet_fname(pet_fname);
				
				// 이미지 저장
				byte[] in = file.getBytes();
				File out = new File(path, pet_fname);
				FileCopyUtils.copy(in, out);
			}
			
			pvo.setUser_id(user_id);
			int result = pet_Service.getPetInsert(pvo);
			
			if(result>0) {
				return mv;
			}else {
				return null;
			}
			
		} catch (Exception e) {
			return null;
		}		
	}
}
