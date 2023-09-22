package com.oguogu.qna.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.qna.model.dao.Qna_DAO;
import com.oguogu.qna.model.vo.Qna_VO;

@Service
public class Qna_ServiceImpl implements Qna_Service{

	@Autowired
	private Qna_DAO qna_DAO;

	@Override
	public int getTotalCount() {
		return qna_DAO.getTotalCount();
	}

	@Override
	public List<Qna_VO> getList(int offset, int limit) {
		return qna_DAO.getList(offset, limit);
	}

	@Override
	public int getInsert(Qna_VO qvo) {
		return qna_DAO.getInsert(qvo);
	}

	@Override
	public Qna_VO getOneList(String one_idx) {
		return qna_DAO.getOneList(one_idx);
	}

	@Override
	public int getUpdate(Qna_VO qvo) {
		return qna_DAO.getUpdate(qvo);
	}

	@Override
	public int getDelete(String one_idx) {
		return qna_DAO.getDelete(one_idx);
	}


	/*
	 * @Override public List<Comment_VO> getCommList(String com_idx) { return
	 * comment_DAO.getCommList(com_idx); }
	 * 
	 * // 댓글 삽입(등록)
	 * 
	 * @Override public int getCommInsert(Comment_VO cvo) { return
	 * comment_DAO.getCommInsert(cvo); }
	 * 
	 * @Override public int getCommDelete(String com_idx) { return
	 * comment_DAO.getCommDelete(com_idx); }
	 * 
	 * @Override public int getCommUpdate(Comment_VO cvo) { return
	 * comment_DAO.getCommUpdate(cvo); }
	 */


}
