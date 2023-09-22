package com.oguogu.support.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.support.model.dao.Support_DAO;
import com.oguogu.support.model.vo.Support_VO;

@Service
public class Support_ServiceImpl implements Support_Service {

	@Autowired
	private Support_DAO support_DAO;

	// 게시글 전체 수
	@Override
	public int getTotalCount() {
		return support_DAO.getTotalCount();
	}
	
	// 페이징 처리를 위한 리스트
	@Override
	public List<Support_VO> getList(int offset, int limit) {
		return support_DAO.getList(offset, limit);
	}

	// 게시글 상세보기
	@Override
	public Support_VO getOneList(String not_idx) {
		return support_DAO.getOneList(not_idx);
	}


}
