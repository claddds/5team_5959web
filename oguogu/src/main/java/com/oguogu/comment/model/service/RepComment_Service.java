package com.oguogu.comment.model.service;

import java.util.List;

import com.oguogu.comment.model.vo.Comment_VO;
import com.oguogu.comment.model.vo.RepComment_VO;

public interface RepComment_Service {

	// 댓글 가져오기(리스트)
	public List<RepComment_VO> getRepCommList(String rep_idx);
	
	// 댓글 입력
	public int getRepCommInsert(RepComment_VO rcvo);
	
	// 댓글 삭제
	public int getRepCommDelete(String repcom_idx);
	
}
