package com.oguogu.pet.controller;

import java.io.File;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
			// 펫 프로필 있을 때
			List<Pet_VO> plist = pet_Service.getPetList(user_id);
			
			// DateTimeFormatter를 사용하여 날짜 형식을 정의합니다.
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

			// 현재 날짜 가져오기
			LocalDate currentDate = LocalDate.now();

			for (Pet_VO pvo : plist) {
			    // 날짜 문자열을 LocalDate로 변환
			    LocalDate birthDate = LocalDate.parse(pvo.getPet_birth(), formatter);

			    // 현재 날짜와 생년월일을 비교하여 차이 계산
			    Period period = Period.between(birthDate, currentDate);

			    // 개월 수 계산
			    int months = period.getYears() * 12 + period.getMonths();

			    // 계산한 개월 수를 pvo 객체에 저장
			    pvo.setMonths(months);
			}
			
			mv.addObject("plist", plist);
			mv.setViewName("mypage/mypage_petprofile_list");
			
		}else {
			// 펫 프로필 없을 때
			mv.setViewName("mypage/mypage_petprofile_list_none");
		}
		return mv;
	}
	
	@RequestMapping("/petRegGoForm.do")
	public ModelAndView getPetRegGoForm() {
		return new ModelAndView("mypage/mypage_petprofile_write");
	}
	
	//펫 등록
	@RequestMapping("/petReg.do")
	public ModelAndView getPetReg(Pet_VO pvo, HttpSession session) {
		ModelAndView mv = new ModelAndView("redirect:/mypagePetProfile.do");
		try {
			String path = session.getServletContext().getRealPath("resources/images");
			
			//유저 아이디 저장
			String user_id = (String) session.getAttribute("user_id");
			pvo.setUser_id(user_id);
			if(pvo.getPet_neute() != "중성화") {
				pvo.setPet_neute("중성화 안함");
			}
			//강아지 사진
			MultipartFile file = pvo.getFile();
			
			if(file.isEmpty()) {
				// 사진이 없으면
				pvo.setPet_fname("/login/basic_profile.jpg");
			}else {
				//사진이 있으면
				UUID uuid = UUID.randomUUID(); // 같은 이름의 파일 없도록 UUID 사용
				String pet_fname = uuid.toString() + "_" + file.getOriginalFilename();
				pvo.setPet_fname(pet_fname);
				
				// 이미지 저장
				byte[] in = file.getBytes();
				File out = new File(path, pet_fname);
				FileCopyUtils.copy(in, out);
			}
			
			//추가
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
	
	@RequestMapping("/getPetProfileOnelist.do")
	public ModelAndView getPetProfileOnelist(@RequestParam("pet_idx") String pet_idx) {
		ModelAndView mv = new ModelAndView("mypage/mypage_petprofile_onelist");
		
		Pet_VO pvo = pet_Service.getPetProfileOnelist(pet_idx);
		
		// DateTimeFormatter를 사용하여 날짜 형식을 정의합니다.
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

		// 현재 날짜 가져오기
		LocalDate currentDate = LocalDate.now();
		
		// 날짜 문자열을 LocalDate로 변환
	    LocalDate birthDate = LocalDate.parse(pvo.getPet_birth(), formatter);

	    // 현재 날짜와 생년월일을 비교하여 차이 계산
	    Period period = Period.between(birthDate, currentDate);

	    // 개월 수 계산
	    int months = period.getYears() * 12 + period.getMonths();

	    // 계산한 개월 수를 pvo 객체에 저장
	    pvo.setMonths(months);
		
		mv.addObject("pvo",pvo);
		
		return mv;
	}
	
	@RequestMapping("/petUpdateForm.do")
	public ModelAndView getPetUpdateForm(@RequestParam("pet_idx") String pet_idx) {
		ModelAndView mv = new ModelAndView("mypage/mypage_petprofile_update_delete");
		Pet_VO pvo = pet_Service.getPetProfileOnelist(pet_idx);
		mv.addObject("pvo", pvo);
		return mv;
	}
	
	@RequestMapping("/petUpdate_go.do")
	public String getPetUpdate(Pet_VO pvo, HttpSession session) {
		
		String path = session.getServletContext().getRealPath("/resources/images");
		
		try {
			
			MultipartFile f_param = pvo.getFile();
			String old_pet_fname = pvo.getOld_pet_fname();
			if(f_param.isEmpty()) {
				pvo.setPet_fname(old_pet_fname);
			}else {
				//파일이 없으면 
				if(old_pet_fname == "/login/basic_profile.png" || old_pet_fname == null || old_pet_fname == "") {
					String pet_fname = pvo.getFile().getOriginalFilename();
					pvo.setPet_fname(pet_fname);
					
					// 이미지 /resources/images 저장하기
					byte[] in = pvo.getFile().getBytes();
					File out = new File(path, pet_fname); //상위폴더(/resources/images) 안에 f_name이 붙음
					FileCopyUtils.copy(in, out);
				}else {
				//파일이 있으면
					UUID uuid = UUID.randomUUID();
					String pet_fname = uuid.toString()+"_"+pvo.getFile().getOriginalFilename();// 디비에 저장할 이름이 f_name					
					pvo.setPet_fname(pet_fname);
					
					// 이미지 /resources/images 저장하기
					byte[] in = pvo.getFile().getBytes();
					File out = new File(path, pet_fname); //상위폴더(/resources/images) 안에 f_name이 붙음
					FileCopyUtils.copy(in, out);
				}
			}

			int result = pet_Service.getPetUpdate(pvo);
			
			return "redirect:/mypagePetProfile.do";
		} catch (Exception e) {
			return null;
		}

	}
	
	@RequestMapping("/petDelete.do")
	public ModelAndView getPetDelete(@RequestParam("pet_idx") String pet_idx) {
		ModelAndView mv = new ModelAndView("redirect:/mypagePetProfile.do");
		
		int result = pet_Service.getPetDelete(pet_idx);
		
		return mv;
	}
	
}
