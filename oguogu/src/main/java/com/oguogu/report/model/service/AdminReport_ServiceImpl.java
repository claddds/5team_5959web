package com.oguogu.report.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.report.model.dao.AdminReport_DAO;
import com.oguogu.report.model.vo.Report_VO;

@Service
public class AdminReport_ServiceImpl implements AdminReport_Service{
	@Autowired
	private AdminReport_DAO adminReport_DAO;

	@Override
	public List<Report_VO> getReportList(Map<String, Object> param) {
		return adminReport_DAO.getReportList(param);
	}

	@Override
	public int getReportListCnt(Map<String, Object> param) {
		return adminReport_DAO.getReportListCnt(param);
	}

	@Override
	public List<Report_VO> getReportOneList(Map<String, Object> param) {
		return adminReport_DAO.getReportOneList(param);
	}
	
	@Override
	public int setRepIng(Map<String, Object> param) {
		return adminReport_DAO.setRepIng(param);
	}
	
	
}
