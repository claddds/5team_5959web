package com.oguogu.ogudoctor.self.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.ogudoctor.self.model.dao.Ogu_Self_DAO;
import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;

@Service
public class Ogu_Self_ServiceImpl implements Ogu_Self_Service{
	// DAO호출
	@Autowired
	private Ogu_Self_DAO ogu_Self_DAO;
	
	@Override
	public List<Ogu_Self_VO> getDogmealfoodlist() {
		return ogu_Self_DAO.getDogmealfoodlist();
	}

	@Override
	public List<Ogu_Self_VO> getDogmealwaterlist() {
		return ogu_Self_DAO.getDogmealwaterlist();
	}
	
}
