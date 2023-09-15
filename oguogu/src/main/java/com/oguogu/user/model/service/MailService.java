 package com.oguogu.user.model.service;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {

	@Autowired
	private JavaMailSender mailSender;
	private MimeMessage message;
	private MimeMessageHelper messageHelper;
	
	public void sendEmail(String randomNumber, String toMail, String user_id) {
		MailHandler sendMail;
		try {
			sendMail = new MailHandler(mailSender);
			sendMail.setSubject("[OguOgu 비밀번호 재설정]"); //메일 제목
			// 내용
			sendMail.setText("<div><h3>안녕하세요 OguOgu입니다.</h3></div>"
					+ "<div style='font-size:20px;'>임시 번호를 다음과 같이 보내드립니다.</div>"
					+ "<div style='font-size:20px;'>" +user_id+ " 님의 비밀 번호 : "+randomNumber+"</div>"
					+ "<div style='font-size:20px;'>로그인 후 마이페이지 - 나의 프로필에서 비밀 번호를 변경 해주세요.</div>"
					);
			// 보내는 이
			sendMail.setFrom("poiu62875@gmail.com", "OguOgu");
			
			// 받는 이
			sendMail.setTo(toMail);
			sendMail.send();
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
