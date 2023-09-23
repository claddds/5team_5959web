package com.oguogu.report.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.report.model.dao.Report_DAO;
import com.oguogu.report.model.vo.Report_VO;

@Service
public class Report_ServiceImpl implements Report_Service{

	@Autowired
	private Report_DAO report_DAO;
	
	// 신고 게시글 삽입
	@Override
	public int getInsert(Report_VO rvo) {
		return report_DAO.getInsert(rvo);
	}

	// 전체 게시물 수
	@Override
	public int getTotalCount() {
		return report_DAO.getTotalCount();
	}

	// 페이징 처리를 위한 리스트
	@Override
	public List<Report_VO> getList(int offset, int limit) {
		return report_DAO.getList(offset, limit);
	}

	// 상세보기
	@Override
	public Report_VO getOneList(String not_idx) {
		return report_DAO.getOneList(not_idx);
	}
	
}
