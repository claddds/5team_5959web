package com.oguogu.comment.model.service;

import java.util.List;

import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.comment.model.vo.QnAComment_VO;
import com.oguogu.comment.model.vo.RepComment_VO;

public interface QnAComment_Service {

	// 댓글 가져오기(리스트)
	public List<QnAComment_VO> getQnACommList(String one_idx);
	
	// 댓글 입력
	public int getQnACommInsert(QnAComment_VO qcvo);
	
	// 댓글 삭제
	public int getQnACommDelete(String qnacom_idx);
	
}
