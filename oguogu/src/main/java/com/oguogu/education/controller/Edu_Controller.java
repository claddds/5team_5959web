package com.oguogu.education.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("/admin_list.do")
	public ModelAndView getEduList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("education/admin_edu_list");
		List<Education_VO> elist = edu_Service.getEdu_List();
		mv.addObject("elist", elist);
		return mv;
	}
	
	@GetMapping("/edu_write.do")
	public ModelAndView getEduInsertForm() {
		return new ModelAndView("education/edu_writeForm");
	}
	
	@PostMapping("/edu_insert.do")
	public ModelAndView getEdudInsert(Education_VO evo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("education/admin_edu_list");
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
			int res = edu_Service.getEdudInsert(evo);
			return mv;
		} catch (Exception e) {
			
		}
		return null;
	}
	
 
}

