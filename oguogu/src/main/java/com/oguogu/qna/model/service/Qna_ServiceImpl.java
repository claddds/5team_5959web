package com.oguogu.qna.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.comment.model.vo.QnAComment_VO;
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
	
	@Override
	public List<QnAComment_VO> getQnACommList(String one_idx) {
		return qna_DAO.getQnACommList(one_idx);
	}

	@Override
	public int getQnACommInsert(QnAComment_VO qcvo) {
		return qna_DAO.getQnACommInsert(qcvo);
	}

	@Override
	public int getQnACommDelete(String qnacom_idx) {
		return qna_DAO.getQnACommDelete(qnacom_idx);
	}

}
