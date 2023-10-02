package com.oguogu.report.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.oguogu.common.Paging;
import com.oguogu.report.model.service.AdminReport_Service;
import com.oguogu.report.model.vo.Report_VO;
import com.oguogu.user.model.vo.User_VO;

@Controller
public class AdminReportController {
	
	@Autowired
	private AdminReport_Service adminReport_Service;
	@Autowired
	private Paging paging;
	
	// 신고 리스트 보기
	@RequestMapping(value = "/getReportList.do",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getReportList(HttpServletRequest request, @RequestBody Map<String, Object> param) {
		System.out.println("요청");
		Map<String,Object> mv = new HashMap<>();
		int offset = (Integer.parseInt(param.get("nowPage").toString())  - 1)* Integer.parseInt(param.get("rowCnt").toString());
		int rowCnt = Integer.parseInt(param.get("rowCnt").toString());
		param.put("offset",offset);
		param.put("rowCnt",rowCnt);
		List<Report_VO> replist = adminReport_Service.getReportList(param);
		System.out.println(replist);
		int totCnt = adminReport_Service.getReportListCnt(param);
		mv.put("replist", replist);
		mv.put("totCnt", totCnt);
		return mv;
	}
	
//	// 신고 상세페이지 보기
//		@RequestMapping(value = "/getReportOneList.do",method = RequestMethod.POST)
//		@ResponseBody
//		public Map<String,Object> getReportOneList(HttpServletRequest request, @RequestBody Map<String, Object> param) {
//			System.out.println("요청");
//			Map<String,Object> mv = new HashMap<>();
//			int offset = (Integer.parseInt(param.get("nowPage").toString())  - 1)* Integer.parseInt(param.get("rowCnt").toString());
//			int rowCnt = Integer.parseInt(param.get("rowCnt").toString());
//			param.put("offset",offset);
//			param.put("rowCnt",rowCnt);
//			List<Report_VO> replist = adminReport_Service.getReportList(param);
//			System.out.println(replist);
//			int totCnt = adminReport_Service.getReportListCnt(param);
//			mv.put("replist", replist);
//			mv.put("totCnt", totCnt);
//			return mv;
//		}
		
		// 신고 상세페이지 보기
//		@RequestMapping(value = "/getReportOneList.do",method = RequestMethod.POST)
//		@ResponseBody
//		public Map<String,Object> getReportOneList(HttpServletRequest request, @RequestBody Map<String, Object> param) {
//			System.out.println("요청");
//			Map<String,Object> mv = new HashMap<>();
//			List<Report_VO> rep_onelist = adminReport_Service.getReportOneList(param);
//			mv.put("replist", rep_onelist);
//			return mv;
//		}
		
		@GetMapping("/getReportOneList.do")
		public ModelAndView getReportOneList() {
			return new ModelAndView("admin/report/report_onelist");
			//System.out.println(param.get("rep_idx"));
		//return mv;
		}
		
		@RequestMapping(value = "/setRepIng.do",method = RequestMethod.POST)
		@ResponseBody
		public Map<String,Object> setRepIng(HttpServletRequest request, @RequestBody Map<String, Object> param) {
			System.out.println("요청");
			Map<String,Object> mv = new HashMap<>();
			int res = adminReport_Service.setRepIng(param);
			param.put("rep_ing",Integer.parseInt(param.get("rep_ing").toString()));
			mv.put("result", res);
			return mv;
		}
}
