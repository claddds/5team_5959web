package com.oguogu.lounge.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.comment.model.dao.Comment_DAO;
import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.lounge.model.dao.Lounge_DAO;
import com.oguogu.lounge.model.vo.Lounge_VO;

@Service
public class Lounge_ServiceImpl implements Lounge_Service{

	@Autowired
	private Lounge_DAO lounge_DAO;
	
	@Autowired
	private Comment_DAO comment_DAO;
	
	@Override
	public List<Lounge_VO> getList() {
		return lounge_DAO.getList();
	}

	@Override
	public int getInsert(Lounge_VO lvo) {
		return lounge_DAO.getInsert(lvo);
	}

	@Override
	public int getTotalCount() {
		return lounge_DAO.getTotalCount();
	}

	@Override
	public List<Lounge_VO> getList(int offset, int limit) {
		return lounge_DAO.getList(offset, limit);
	}

	@Override
	public Lounge_VO getOneList(String lo_idx) {
		return lounge_DAO.getOneList(lo_idx);
	}

	@Override
	public int getHitUpdate(String lo_idx) {
		return lounge_DAO.getHitUpdate(lo_idx);
	}

	@Override
	public int getDelete(String lo_idx) {
		return lounge_DAO.getDelete(lo_idx);
	}

	@Override
	public int getUpdate(Lounge_VO lvo) {
		return lounge_DAO.getUpdate(lvo);
	}

	@Override
	public List<Comment_VO> getCommList(String com_idx) {
		return comment_DAO.getCommList(com_idx);
	}
	
	// 댓글 삽입(등록)
	@Override
	public int getCommInsert(Comment_VO cvo) {
		return comment_DAO.getCommInsert(cvo);
	}

	@Override
	public int getCommDelete(String com_idx) {
		return comment_DAO.getCommDelete(com_idx);
	}

	@Override
	public int getCommUpdate(Comment_VO cvo) {
		return comment_DAO.getCommUpdate(cvo);
	}


}
