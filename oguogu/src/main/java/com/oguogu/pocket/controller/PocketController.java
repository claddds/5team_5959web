package com.oguogu.pocket.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PocketController {
	// 포켓 메인 화면에서 '나의 포켓 만들기'버튼을 누르면 포켓만들기 폼으로 이동
	@GetMapping("/gopocketform.do")
	public ModelAndView getGoPocketForm() {
	return new ModelAndView("pocket/pocketform");
	}
	
	// json파일을 전체list에 담기(장소 추가하기 버튼을 눌렀을때 검색버튼 전에 밑에 전체 리스트가 뜬다)
	@RequestMapping("/pocket_json_go.do")
	public ModelAndView getpocket_json_go() {
		try {
			
		} catch (Exception e) {
		}
	}
}
