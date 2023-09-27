package com.oguogu.comment.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.comment.model.dao.QnAComment_DAO;
import com.oguogu.comment.model.vo.QnAComment_VO;

@Service
public class QnAComment_ServiceImpl implements QnAComment_Service{

	@Autowired
	private QnAComment_DAO qnaComment_DAO;

	@Override
	public List<QnAComment_VO> getQnACommList(String one_idx) {
		return qnaComment_DAO.getQnACommList(one_idx);
	}

	@Override
	public int getQnACommInsert(QnAComment_VO qcvo) {
		return qnaComment_DAO.getQnACommInsert(qcvo);
	}

	@Override
	public int getQnACommDelete(String qnacom_idx) {
		return qnaComment_DAO.getQnACommDelete(qnacom_idx);
	}

	


}
