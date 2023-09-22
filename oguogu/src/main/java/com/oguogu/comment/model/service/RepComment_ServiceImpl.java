package com.oguogu.comment.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oguogu.comment.model.dao.Comment_DAO;
import com.oguogu.comment.model.dao.RepComment_DAO;
import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.comment.model.vo.RepComment_VO;

@Service
public class RepComment_ServiceImpl implements RepComment_Service{

	@Autowired
	private RepComment_DAO repComment_DAO;

	@Override
	public List<RepComment_VO> getRepCommList(String rep_idx) {
		return repComment_DAO.getRepCommList(rep_idx);
	}

	@Override
	public int getRepCommInsert(RepComment_VO rcvo) {
		return repComment_DAO.getRepCommInsert(rcvo);
	}

	@Override
	public int getRepCommDelete(String repcom_idx) {
		return repComment_DAO.getRepCommDelete(repcom_idx);
	}
	


}
