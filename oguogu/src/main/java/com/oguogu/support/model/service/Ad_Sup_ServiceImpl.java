package com.oguogu.support.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.food.model.vo.Food_VO;
import com.oguogu.support.model.dao.Ad_Sup_DAO;
import com.oguogu.support.model.vo.Support_VO;

@Service
public class Ad_Sup_ServiceImpl implements Ad_Sup_Service{
	@Autowired
	private Ad_Sup_DAO ad_Sup_DAO ; 
	

	@Override
	public int getTotalCount() {
		return ad_Sup_DAO.getTotalCount();
	}
	// 교육정보 전체 리스트 
	@Override
	public List<Support_VO> getAd_Sup_List(int offset, int limit) {
		return ad_Sup_DAO.getAd_Sup_List(offset, limit);
	}
	
	
	@Override
	public Support_VO getSupAdminOneList(String not_idx) {
		return ad_Sup_DAO.getSupAdminOneList(not_idx);
	}
	@Override
	public int getSupInsert(Support_VO sup_vo) {
		return ad_Sup_DAO.getSupInsert(sup_vo);
	}
	@Override
	public int getSup_Update(Support_VO sup_vo) {
		int result = ad_Sup_DAO.getSup_Update(sup_vo);
		return result;
	}
	
	
	@Override
	public int getSup_Delete(Support_VO sup_vo) {
		int result = ad_Sup_DAO.getSup_Delete(sup_vo);
		return result;
	}
	
	

	@Override
	public int getSearchTotalCount(String searchtype, String keyword) {
		return ad_Sup_DAO.getSearchTotalCount(searchtype,keyword);
	}

	
	@Override
	public List<Support_VO> getSearch(String searchtype, String keyword, int offset, int limit) {
	        return ad_Sup_DAO.getSearch(searchtype, keyword, limit, offset);
	    }
	
	
	
}
