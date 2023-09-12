package com.oguogu.user.model.service;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
public class MailHandler {

	private JavaMailSender mailSender;
	private MimeMessage message;
	private MimeMessageHelper messageHelper;
	
	public MailHandler(JavaMailSender mailSender) throws Exception{
		this.mailSender = mailSender;
		message = this.mailSender.createMimeMessage();
		messageHelper = new MimeMessageHelper(message, true, "utf-8");
											//첨부파일 있을 때 true, 인코딩
	}
	
	// 제목
	public void setSubject(String subject) throws Exception{
		messageHelper.setSubject(subject);
	}			
	// 내용
	public void setText(String text) throws Exception{
		messageHelper.setText(text, true);
								  // html 사용할거니
	}
	// 보낸 사람의 이메일과 제목
	public void setFrom(String email, String name) throws Exception{
		messageHelper.setFrom(email, name);
	}
	// 받는 이메일
	public void setTo(String email) throws Exception{
		messageHelper.setTo(email);
	}
	//보내기
	public void send() {
		mailSender.send(message);
	}
	
}
