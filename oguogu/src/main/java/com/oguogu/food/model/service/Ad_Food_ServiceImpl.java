package com.oguogu.food.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.faq.model.vo.FAQ_VO;
import com.oguogu.food.model.dao.Ad_Food_DAO;
import com.oguogu.food.model.vo.Food_VO;

@Service
public class Ad_Food_ServiceImpl implements Ad_Food_Service{
	@Autowired
	private Ad_Food_DAO ad_Food_DAO;
	

	@Override
	public int getTotalCount() {
		return ad_Food_DAO.getTotalCount();
	}
	// 교육정보 전체 리스트 
	@Override
	public List<Food_VO> getAd_Food_List(int offset, int limit) {
		return ad_Food_DAO.getAd_Food_List(offset, limit);
	}
	
	
	@Override
	public Food_VO getFoodAdminOneList(String fd_idx) {
		return ad_Food_DAO.getFoodAdminOneList(fd_idx);
	}
	@Override
	public int getFoodInsert(Food_VO ad_f_vo) {
		return ad_Food_DAO.getFoodInsert(ad_f_vo);
	}
	@Override
	public int getFood_Update(Food_VO ad_f_vo) {
		int result = ad_Food_DAO.getFood_Update(ad_f_vo);
		return result;
	}
	
	
	@Override
	public int getFood_Delete(Food_VO ad_f_vo) {
		int result = ad_Food_DAO.getFood_Delete(ad_f_vo);
		return result;
	}
	
	
	@Override
	public int getSearchTotalCount(String searchtype, String keyword) {
		return ad_Food_DAO.getSearchTotalCount(searchtype,keyword);
	}

	
	@Override
	public List<Food_VO> getSearch(String searchtype, String keyword, int offset, int limit) {
	        return ad_Food_DAO.getSearch(searchtype, keyword, limit, offset);
	    }
	
}
