package com.oguogu.faq.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.faq.model.dao.FAQ_DAO;
import com.oguogu.faq.model.vo.FAQ_VO;

@Service
public class FAQ_ServiceImpl implements FAQ_Service{
	
	@Autowired
	private FAQ_DAO faq_DAO;
	
	@Override
	public int getTotalCount() {
		return faq_DAO.getTotalCount();
	}

	@Override
	public List<FAQ_VO> getList(int offset, int limit) {
		return faq_DAO.getList(offset, limit);
	}

	@Override
	public FAQ_VO getOneList(String faq_idx) {
		return faq_DAO.getOneList(faq_idx);
	}

}
