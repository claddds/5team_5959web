package com.oguogu.user.controller;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oguogu.user.model.service.Join_Service;
import com.oguogu.user.model.service.MailService;
import com.oguogu.user.model.vo.User_VO;



@Controller
public class EmailController {
	
	@Autowired
	private MailService mailService;
	
	@Autowired 
	private Join_Service join_Service;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/email_send.do")
	@ResponseBody
	public int sendMail(User_VO userVO) {
		try {

			int resultId = join_Service.userIdChk(userVO);
			
			int resultEmail = join_Service.userEmailChk(userVO);
			
			if(resultId == 0) {
				return 0; // ajax에서 아이디가 없다면 처리할 alert로 등록되지 않은 아이디입니다. 처리
			}else if(resultEmail == 0) {
				return 1; // ajax에서 이메일이 없다면 처리할 alert로 등록되지 않은 이메일입니다. 처리
			}else {
			
			// 임시번호 만들기
			UUID uuid= UUID.randomUUID();
			String randomPW = uuid.toString().substring(0, 8);
            //유저 비밀번호 임시번호로 초기화
            userVO.setPw(passwordEncoder.encode(randomPW));
            //유저 비밀번호 업데이트
            join_Service.getPwUpdate(userVO);
            mailService.sendEmail(randomPW, userVO.getEmail() , userVO.getUser_id());
            return 2; // ajax에서 비밀번호 변경 메일을 발송했습니다. 처리
			}
		} catch (Exception e) {
			return 3;
		}
		
	}
	
}
