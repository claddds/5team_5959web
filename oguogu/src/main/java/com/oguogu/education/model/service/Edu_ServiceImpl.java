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
	
//	@Override
//	public List<Education_VO> getEdu_List(int offset, int limit) {
//		// TODO Auto-generated method stub
//		return education_DAO.getEdu_List(offset, limit);
//	}

	@Override
	public List<Education_VO> getEdu_List() {
		
		return education_DAO.getEdu_List();
	}

	@Override
	public int getEdudInsert(Education_VO evo) {
		return education_DAO.getEdudInsert(evo);
	}
	
	
	
	@Override
	public int getTotalCount() {
		return education_DAO.getTotalCount();
	}
	
}
