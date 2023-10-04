package com.oguogu.ogudoctor.self.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.ogudoctor.self.model.dao.AdminOgu_Dic_DAO;
import com.oguogu.ogudoctor.self.model.dao.AdminOgu_Self_DAO;
import com.oguogu.ogudoctor.self.model.dao.Ogu_Self_DAO;
import com.oguogu.ogudoctor.self.model.vo.Admin_OguDictionary_VO;
import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;

@Service
public class AdminOgu_Dic_ServiceImpl implements AdminOgu_Dic_Service{
	// DAO호출
	@Autowired
	private AdminOgu_Dic_DAO adminOgu_Dic_DAO;

	// 전체 게시물 수 구하기
	@Override
	public int getTotalCount() {
		return adminOgu_Dic_DAO.getTotalCount();
	}

	// 리스트 보기
	@Override
	public List<Admin_OguDictionary_VO> getList() {
		return adminOgu_Dic_DAO.getList();
	}

	// 페이징처리된 리스트 보기
	@Override
	public List<Admin_OguDictionary_VO> getList(int offset, int limit) {
		return adminOgu_Dic_DAO.getList(offset,limit);
	}

	// 질병사전리스트에 데이터 삽입
	@Override
	public int getDiseaseInsert(Admin_OguDictionary_VO addicvo) {
		return adminOgu_Dic_DAO.getDiseaseInsert(addicvo);
	}

	// 질병 사전 리스트 삭제(미게시)
	@Override
	public int getDelete(String dictionary_idx) {
		return adminOgu_Dic_DAO.getDelete(dictionary_idx);
	}

}
