package com.oguogu.faq.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.faq.model.dao.Ad_Faq_DAO;
import com.oguogu.faq.model.vo.FAQ_VO;

@Service
public class Ad_Faq_ServiceImpl implements Ad_Faq_Service{
	@Autowired
	private Ad_Faq_DAO ad_Faq_DAO; 
	

	@Override
	public int getTotalCount() {
		return ad_Faq_DAO.getTotalCount();
	}
	
	@Override
	public int getSearchTotalCount(String searchtype, String keyword) {
		return ad_Faq_DAO.getSearchTotalCount(searchtype,keyword);
	}
	// 교육정보 전체 리스트 
	@Override
	public List<FAQ_VO> getAd_Faq_List(int offset, int limit) {
		return ad_Faq_DAO.getAd_Faq_List(offset, limit);
	}
	
	
	@Override
	public FAQ_VO getFaqAdminOneList(String faq_idx) {
		return ad_Faq_DAO.getFaqAdminOneList(faq_idx);
	}
	@Override
	public int getFaqInsert(FAQ_VO faq_vo) {
		return ad_Faq_DAO.getFaqInsert(faq_vo);
	}
	@Override
	public int getFaq_Update(FAQ_VO faq_vo) {
		int result = ad_Faq_DAO.getFaq_Update(faq_vo);
		return result;
	}
	
	
	@Override
	public int getFaq_Delete(FAQ_VO faq_vo) {
		int result = ad_Faq_DAO.getFaq_Delete(faq_vo);
		return result;
	}
	
	@Override
	public List<FAQ_VO> getSearch(String searchtype, String keyword, int offset, int limit) {
	        return ad_Faq_DAO.getSearch(searchtype, keyword, limit, offset);
	    }


	
	
	
}
