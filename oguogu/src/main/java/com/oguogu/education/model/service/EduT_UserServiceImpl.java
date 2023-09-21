package com.oguogu.education.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.education.model.dao.EduT_UserDAO;
import com.oguogu.education.model.vo.EduHeart_VO;
import com.oguogu.education.model.vo.Education_VO;

@Service
public class EduT_UserServiceImpl implements EduT_UserService{

	@Autowired
	private EduT_UserDAO eduT_UserDAO;
	
	@Override
	public List<Education_VO> getDogTlist(int offset, int limit) throws Exception{
		return eduT_UserDAO.getDogTlist(offset,limit);
	}

	@Override
	public List<Education_VO> getCatTlist(int offset, int limit) throws Exception{
		return eduT_UserDAO.getCatTlist(offset,limit);
	}

	@Override
	public int getDogListTCount() throws Exception{
		return eduT_UserDAO.getDogListTCount();
	}

	@Override
	public int getCatListTCount() throws Exception{
		return eduT_UserDAO.getCatListTCount();
	}

	@Override
	public EduHeart_VO getTHeartOnelist(EduHeart_VO ehVo) throws Exception{
		return eduT_UserDAO.getTHeartOnelist(ehVo);
	}

	@Override
	public int getTHitUpdate(String edu_idx) throws Exception{
		return eduT_UserDAO.getTHitUpdate(edu_idx);
	}

	@Override
	public Education_VO getTDogOneList(String edu_idx) throws Exception{
		return eduT_UserDAO.getTDogOneList(edu_idx);
	}

	@Override
	public int getTHeartInsert(EduHeart_VO ehVo) throws Exception{
		return eduT_UserDAO.getTHeartInsert(ehVo);
	}

	@Override
	public int getTHeartDelete(EduHeart_VO ehVo) throws Exception{
		return eduT_UserDAO.getTHeartDelete(ehVo);
	}

	@Override
	public int getTHeartCount(String edu_idx) throws Exception{
		return eduT_UserDAO.getTHeartCount(edu_idx);
	}
	
	
}
