package com.oguogu.ogudoctor.self.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.ogudoctor.self.model.dao.Ogu_Sym_DAO;
import com.oguogu.ogudoctor.self.model.vo.Ogu_Sym_VO;


@Service
public class Ogu_Sym_ServiceImpl implements Ogu_Sym_Service{
	@Autowired
	private Ogu_Sym_DAO ogu_Sym_DAO;

	@Override
	public List<Ogu_Sym_VO> getDiseaseName(String disInfoOption1) {
		return ogu_Sym_DAO.getDiseaseName(disInfoOption1);
	}
}
