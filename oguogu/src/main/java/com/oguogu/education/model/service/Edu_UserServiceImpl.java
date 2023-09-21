package com.oguogu.education.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.education.model.dao.Edu_UserDAO;
import com.oguogu.education.model.vo.EduHeart_VO;
import com.oguogu.education.model.vo.Education_VO;

@Service
public class Edu_UserServiceImpl implements Edu_UserService{
	
	@Autowired
	private Edu_UserDAO edu_UserDAO;
	
	//교육정보 메인 페이지 필수정보 4개 얻어오기
	@Override
	public List<Education_VO> getElist() throws Exception{
		return edu_UserDAO.getEList();
	}
	
	//교육정보 메인 페이지 양육정보 4개 얻어오기
	@Override
	public List<Education_VO> getBlist() throws Exception{
		return edu_UserDAO.getBList();
	}
	
	//교육정보 메인 페이지 훈련 정보 4개 얻어오기
	@Override
	public List<Education_VO> getTlist() throws Exception{
		return edu_UserDAO.getTList();
	}
	////////////////////////////////////////////////////////////////////
	//필수정보 강아지 리스트
	@Override
	public List<Education_VO> getDogElist(int offset, int limit) throws Exception{
		return edu_UserDAO.getDogElist(offset,limit);
	}
	
	//필수정보 고양이 리스트
	@Override
	public List<Education_VO> getCatElist(int offset, int limit) throws Exception{
		return edu_UserDAO.getCatElist(offset,limit);
	}
	
	//필수정보 강아지 게시판 게시물 수 구하기
	@Override
	public int getDogListCount() throws Exception{
		return edu_UserDAO.getDogListCount();
	}
	
	//필수정보 고양이 게시판 게시물 수 구하기
	@Override
	public int getCatListCount() throws Exception{
		return edu_UserDAO.getCatListCount();
	}
	
	//필수정보 상세 정보 좋아요 했는지 안 했는지 확인
	@Override
	public EduHeart_VO getHeartOnelist(EduHeart_VO ehVo) throws Exception{
		return edu_UserDAO.getHeartOnelist(ehVo);
	}

	@Override
	public int getHitUpdate(String edu_idx) throws Exception{
		return edu_UserDAO.getHitUpdate(edu_idx);
	}

	@Override
	public Education_VO getDogOneList(String edu_idx) throws Exception{
		return edu_UserDAO.getDogOneList(edu_idx);
	}

	@Override
	public int getHeartInsert(EduHeart_VO ehVo) throws Exception{
		return edu_UserDAO.getHeartInsert(ehVo);
	}

	@Override
	public int getHeartDelete(EduHeart_VO ehVo) throws Exception{
		return edu_UserDAO.getHeartDelete(ehVo);
	}
	
	@Override
	public int getHeartCount(String edu_idx) throws Exception{
		return edu_UserDAO.getHeartCount(edu_idx);
	}
}
