package com.oguogu.ogudoctor.self.model.service;

import java.util.List;

import com.oguogu.ogudoctor.self.model.vo.Ogu_Self_VO;

public interface Ogu_Self_Service {
	// 식사량 선택 가져오기
	List<Ogu_Self_VO> getDogmealfoodlist();

	// 식수량 선택 가져오기
	List<Ogu_Self_VO> getDogmealwaterlist();
}
