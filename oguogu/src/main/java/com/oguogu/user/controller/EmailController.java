package com.oguogu.user.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.user.model.service.MailService;



@Controller
public class EmailController {
	
	@Autowired
	private MailService mailService;
	
	@RequestMapping("/email_send.do")
	public ModelAndView sendMail() {
		try {
			ModelAndView mv = new ModelAndView("redirect:/");
			
			// 혹시 DB, 기타 등
			
			// 임시번호 만들기
			Random random = new Random();
            String randomNumber = String.valueOf(random.nextInt(1000000) % 1000000);
            if(randomNumber.length() < 6) {
                int substract = 6 - randomNumber.length();
                StringBuffer sb = new StringBuffer();
                for(int i=0; i<substract; i++) {
                    sb.append("0");
                }
                sb.append(randomNumber);
                randomNumber = sb.toString();
            }
            
            mailService.sendEmail(randomNumber, "poiu62875@gmail.com");
            return mv;
		} catch (Exception e) {
			return null;
		}
		
	}
	
}
