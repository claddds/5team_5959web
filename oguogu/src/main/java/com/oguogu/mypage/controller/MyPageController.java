package com.oguogu.mypage.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.oguogu.mypage.model.service.MyPageService;

@Controller
public class MyPageController {
	
	@Autowired
	MyPageService myPageService;
	
	
	
}
