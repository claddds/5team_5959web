package com.oguogu.education.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.education.model.dao.Education_DAO;
import com.oguogu.education.model.vo.Education_VO;

@Service
public class Edu_ServiceImpl implements Edu_Service{
	@Autowired
	private Education_DAO education_DAO;
	

	@Override
	public int getTotalCount() {
		return education_DAO.getTotalCount();
	}
	@Override
	public int getSearchTotalCount(String searchtype, String keyword) {
		return education_DAO.getSearchTotalCount(searchtype,keyword);
	}
	
	@Override
	public int getA_TotalCount() {		
		return education_DAO.getA_TotalCount();
	}
	
	@Override
	public int getB_TotalCount() {		
		return education_DAO.getB_TotalCount();
	}
	
	@Override
	public int getC_TotalCount() {		
		return education_DAO.getC_TotalCount();
	}
	// 교육정보 전체 리스트 
	@Override
	public List<Education_VO> getEdu_List(int offset, int limit) {
		return education_DAO.getEdu_List(offset, limit);
	}
	
	// 필수
	@Override
	public List<Education_VO> getEdu_Alist(int offset, int limit) {
		return education_DAO.getEdu_Alist(offset, limit);
	}
	// 양육
	@Override
	public List<Education_VO> getEdu_Blist(int offset, int limit) {
		return education_DAO.getEdu_Blist(offset, limit);
	}
	// 훈련
	@Override
	public List<Education_VO> getEdu_Clist(int offset, int limit) {
		return education_DAO.getEdu_Clist(offset, limit);
	}
	
	@Override
	public Education_VO getEduAdminOneList(String edu_idx) {
		return education_DAO.getEduAdminOneList(edu_idx);
	}
	@Override
	public int getEdudInsert(Education_VO evo) {
		return education_DAO.getEdudInsert(evo);
	}
	@Override
	public int getEdu_Update(Education_VO evo) {
		int result = education_DAO.getEdu_Update(evo);
		return result;
	}
	
	
	@Override
	public int getEdu_Delete(Education_VO evo) {
		int result = education_DAO.getEdu_Delete(evo);
		return result;
	}

	@Override
	public List<Education_VO> getSearch(String searchtype, String keyword, int offset, int limit) {
	        return education_DAO.getSearch(searchtype, keyword, limit, offset);
	    }
	
	@Override
	public List<Education_VO> getASearch(String searchtype, String keyword, int offset, int limit) {
	        return education_DAO.getASearch(searchtype, keyword, limit, offset);
	    }
	@Override
	public List<Education_VO> getBSearch(String searchtype, String keyword, int offset, int limit) {
	        return education_DAO.getBSearch(searchtype, keyword, limit, offset);
	    }
	@Override
	public List<Education_VO> getCSearch(String searchtype, String keyword, int offset, int limit) {
	        return education_DAO.getCSearch(searchtype, keyword, limit, offset);
	    }
	}

	
	