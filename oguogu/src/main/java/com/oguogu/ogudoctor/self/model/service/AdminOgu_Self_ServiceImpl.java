package com.oguogu.ogudoctor.self.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.ogudoctor.self.model.dao.AdminOgu_Self_DAO;
import com.oguogu.ogudoctor.self.model.dao.Ogu_Self_DAO;
import com.oguogu.ogudoctor.self.model.vo.Admin_OguDictionary_VO;
import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;

@Service
public class AdminOgu_Self_ServiceImpl implements AdminOgu_Self_Service{
	// DAO호출
	@Autowired
	private AdminOgu_Self_DAO adminOgu_Self_DAO;

	// 전체 게시물 수 구하기
	@Override
	public int getTotalCount() {
		return adminOgu_Self_DAO.getTotalCount();
	}
	
	// 리스트 보기
	@Override
	public List<Ogu_Self_VO> getList() {
		return adminOgu_Self_DAO.getList();
	}

	// 페이징처리된 리스트 보기
	@Override
	public List<Ogu_Self_VO> getList(int offset, int limit) {
		return adminOgu_Self_DAO.getList(offset,limit);
	}
	
	
	// 질병체크리스트에 데이터 삽입
	@Override
	public int getDiseaseInsert(Ogu_Self_VO oguselfvo) {
		return adminOgu_Self_DAO.getDiseaseInsert(oguselfvo);
	}

	// 질병 체크 리스트 삭제(미게시)
	@Override
	public int getDelete(String ogu_idx) {
		return adminOgu_Self_DAO.getDelete(ogu_idx);
	}

	
}
