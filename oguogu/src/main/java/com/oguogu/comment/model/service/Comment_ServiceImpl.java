//package com.oguogu.comment.model.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.oguogu.comment.model.dao.Comment_DAO;
//import com.oguogu.comment.model.vo.Comment_VO;
//
//@Service
//public class Comment_ServiceImpl implements Comment_Service{
//
//	@Autowired
//	private Comment_DAO comment_DAO;
//	
//	@Override
//	public List<Comment_VO> getCommList(String lo_idx) {
//		return comment_DAO.getCommList(lo_idx);
//	}
//
//	@Override
//	public int getCommInsert(Comment_VO cvo) {
//		return comment_DAO.getCommInsert(cvo);
//	}
//
//	@Override
//	public int getCommDelete(String com_idx) {
//		return comment_DAO.getCommDelete(com_idx);
//	}
//
//	@Override
//	public int getCommUpdate(Comment_VO cvo) {
//		return comment_DAO.getCommUpdate(cvo);
//	}
//
//}
