package com.oguogu.education.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.education.model.dao.EduB_UserDAO;
import com.oguogu.education.model.vo.EduHeart_VO;
import com.oguogu.education.model.vo.Education_VO;

@Service
public class EduB_UserServiceImpl implements EduB_UserService{

	@Autowired
	private EduB_UserDAO eduB_UserDAO;
	
	@Override
	public List<Education_VO> getDogBlist(int offset, int limit) throws Exception{
		return eduB_UserDAO.getDogBlist(offset,limit);
	}

	@Override
	public List<Education_VO> getCatBlist(int offset, int limit) throws Exception{
		return eduB_UserDAO.getCatBlist(offset,limit);
	}

	@Override
	public int getDogListBCount() throws Exception{
		return eduB_UserDAO.getDogListBCount();
	}

	@Override
	public int getCatListBCount() throws Exception{
		return eduB_UserDAO.getCatListBCount();
	}

	@Override
	public EduHeart_VO getBHeartOnelist(EduHeart_VO ehVo) throws Exception{
		return eduB_UserDAO.getBHeartOnelist(ehVo);
	}

	@Override
	public int getBHitUpdate(String edu_idx) throws Exception{
		return eduB_UserDAO.getBHitUpdate(edu_idx);
	}

	@Override
	public Education_VO getBDogOneList(String edu_idx) throws Exception{
		return eduB_UserDAO.getBDogOneList(edu_idx);
	}

	@Override
	public int getBHeartInsert(EduHeart_VO ehVo) throws Exception{
		return eduB_UserDAO.getBHeartInsert(ehVo);
	}

	@Override
	public int getBHeartDelete(EduHeart_VO ehVo) throws Exception{
		return eduB_UserDAO.getBHeartDelete(ehVo);
	}

	@Override
	public int getBHeartCount(String edu_idx) throws Exception{
		return eduB_UserDAO.getBHeartCount(edu_idx);
	}
	
	
}
