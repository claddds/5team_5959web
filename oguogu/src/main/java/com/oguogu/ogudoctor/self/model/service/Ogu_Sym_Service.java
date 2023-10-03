package com.oguogu.ogudoctor.self.model.service;

import java.util.List;

import com.oguogu.ogudoctor.self.model.vo.Ogu_Sym_VO;

public interface Ogu_Sym_Service {
	public List<Ogu_Sym_VO> getDiseaseName(String disInfoOption1);
}
